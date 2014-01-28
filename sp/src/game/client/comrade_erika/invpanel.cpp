//The following include files are necessary to allow your MyPanel.cpp to compile.
#include "cbase.h"
#include "invpanel.h"

#include "IGameUIFuncs.h" // for key bindings

#include "tier0/memdbgon.h"

// Constructor: Initializes the Panel
CInvPanel::CInvPanel(IViewPort *pViewPort) : BaseClass(NULL, PANEL_INVENTORY)
{
	m_pViewPort = pViewPort;
	m_iInvKey = BUTTON_CODE_INVALID;

	// initialize dialog
	SetTitle("", true);

	// load the new scheme early!!
	SetScheme(vgui::scheme()->LoadSchemeFromFile("resource/SourceScheme.res", "SourceScheme"));
	SetMoveable(false);
	SetSizeable(false);

	// hide the system buttons
	SetTitleBarVisible( false );
	SetProportional(true);

	LoadControlSettings("resource/UI/invpanel.res");
	InvalidateLayout();
	SetSize(ScreenWidth(),ScreenHeight());

	m_pInvPanel = new VInvPanel(this, "InvPanelHTML");
	m_pInvPanel->SetPos(0,0);
	m_pInvPanel->SetSize(ScreenWidth(),ScreenHeight());
	
	DevMsg("InvPanel has been constructed\n");
}

void CInvPanel::ShowPanel(bool bShow)
{
	if ( BaseClass::IsVisible() == bShow)
	{
		return;
	}
	
	if (bShow)
	{
		Activate();

		SetMouseInputEnabled(true);

		if ( m_iInvKey == BUTTON_CODE_INVALID )
		{
			m_iInvKey = gameuifuncs->GetButtonCodeForBind( "inventory" );
		}

		// FIXME: THIS IS GROSS AS FUCK
		// DO NOT SHIP BINARIES IN THIS STATE!
		// ASSUMES STEAM IS ON WINDOWS x64, INSTALLED TO DEFAULT LOCATION
		// AND THE STARS ARE RIGHT - FOR TESTING *ONLY*
		m_pInvPanel->OpenURL("file:///C:/Program Files (x86)/Steam/SteamApps/sourcemods/comrade_erika/html/invpanel/invpanel.html");

	}
	else
	{
		SetVisible(false);
		SetMouseInputEnabled(false);
	}

}

void CInvPanel::Update()
{
	// This is a stub.
	return;
}

void CInvPanel::OnCommand(const char *command)
{
	if ( Q_strcmp( command, "vguicancel") )
	{
		engine->ClientCmd( const_cast<char *>( command ) );
	}
	Close();
	gViewPortInterface->ShowBackGround( false );
	BaseClass::OnCommand(command);
}
