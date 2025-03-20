.class final Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;
.super Ljava/lang/Object;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Object"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ADD_SEARCH_ENGINE_LEARN_MORE:Ljava/lang/String; = "search_engine_learn_more"

# The value of this static final field might be set in the static constructor
.field private static final ADD_TO_HOMESCREEN_DIALOG:Ljava/lang/String; = "add_to_homescreen_dialog"

# The value of this static final field might be set in the static constructor
.field private static final APP:Ljava/lang/String; = "app"

# The value of this static final field might be set in the static constructor
.field private static final APP_ICON:Ljava/lang/String; = "app_icon"

# The value of this static final field might be set in the static constructor
.field private static final AUTOCOMPLETE_DOMAIN:Ljava/lang/String; = "autocomplete_domain"

# The value of this static final field might be set in the static constructor
.field private static final AUTOFILL:Ljava/lang/String; = "autofill"

# The value of this static final field might be set in the static constructor
.field private static final BACK_BUTTON:Ljava/lang/String; = "back_button"

# The value of this static final field might be set in the static constructor
.field private static final BLOCKING_SWITCH:Ljava/lang/String; = "blocking_switch"

# The value of this static final field might be set in the static constructor
.field private static final BROWSER:Ljava/lang/String; = "browser"

# The value of this static final field might be set in the static constructor
.field private static final BROWSER_CONTEXTMENU:Ljava/lang/String; = "browser_contextmenu"

# The value of this static final field might be set in the static constructor
.field private static final CUSTOM_SEARCH_ENGINE:Ljava/lang/String; = "custom_search_engine"

# The value of this static final field might be set in the static constructor
.field private static final CUSTOM_TAB_ACTION_BUTTON:Ljava/lang/String; = "custom_tab_action_bu"

# The value of this static final field might be set in the static constructor
.field private static final CUSTOM_TAB_CLOSE_BUTTON:Ljava/lang/String; = "custom_tab_close_but"

# The value of this static final field might be set in the static constructor
.field private static final DESKTOP_REQUEST_CHECK:Ljava/lang/String; = "desktop_request_check"

# The value of this static final field might be set in the static constructor
.field private static final DOWNLOAD_DIALOG:Ljava/lang/String; = "download_dialog"

# The value of this static final field might be set in the static constructor
.field private static final ERASE_BUTTON:Ljava/lang/String; = "erase_button"

# The value of this static final field might be set in the static constructor
.field private static final FIRSTRUN:Ljava/lang/String; = "firstrun"

# The value of this static final field might be set in the static constructor
.field private static final HOMESCREEN_SHORTCUT:Ljava/lang/String; = "homescreen_shortcut"

.field public static final INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

# The value of this static final field might be set in the static constructor
.field private static final MENU:Ljava/lang/String; = "menu"

# The value of this static final field might be set in the static constructor
.field private static final NOTIFICATION:Ljava/lang/String; = "notification"

# The value of this static final field might be set in the static constructor
.field private static final NOTIFICATION_ACTION:Ljava/lang/String; = "notification_action"

# The value of this static final field might be set in the static constructor
.field private static final RECENT_APPS:Ljava/lang/String; = "recent_apps"

# The value of this static final field might be set in the static constructor
.field private static final REMOVE_SEARCH_ENGINES:Ljava/lang/String; = "remove_search_engines"

# The value of this static final field might be set in the static constructor
.field private static final SEARCH_BAR:Ljava/lang/String; = "search_bar"

# The value of this static final field might be set in the static constructor
.field private static final SEARCH_ENGINE_SETTING:Ljava/lang/String; = "search_engine_setting"

# The value of this static final field might be set in the static constructor
.field private static final SETTING:Ljava/lang/String; = "setting"

# The value of this static final field might be set in the static constructor
.field private static final SHORTCUT:Ljava/lang/String; = "shortcut"

# The value of this static final field might be set in the static constructor
.field private static final TABS_TRAY:Ljava/lang/String; = "tabs_tray"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;-><init>()V

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    .line 97
    const-string v0, "search_bar"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SEARCH_BAR:Ljava/lang/String;

    .line 98
    const-string v0, "erase_button"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->ERASE_BUTTON:Ljava/lang/String;

    .line 99
    const-string v0, "setting"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SETTING:Ljava/lang/String;

    .line 100
    const-string v0, "app"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->APP:Ljava/lang/String;

    .line 101
    const-string v0, "menu"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->MENU:Ljava/lang/String;

    .line 102
    const-string v0, "back_button"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BACK_BUTTON:Ljava/lang/String;

    .line 103
    const-string v0, "notification"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->NOTIFICATION:Ljava/lang/String;

    .line 104
    const-string v0, "notification_action"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->NOTIFICATION_ACTION:Ljava/lang/String;

    .line 105
    const-string v0, "shortcut"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SHORTCUT:Ljava/lang/String;

    .line 106
    const-string v0, "blocking_switch"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BLOCKING_SWITCH:Ljava/lang/String;

    .line 107
    const-string v0, "desktop_request_check"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->DESKTOP_REQUEST_CHECK:Ljava/lang/String;

    .line 108
    const-string v0, "browser"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BROWSER:Ljava/lang/String;

    .line 109
    const-string v0, "browser_contextmenu"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BROWSER_CONTEXTMENU:Ljava/lang/String;

    .line 110
    const-string v0, "custom_tab_close_but"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->CUSTOM_TAB_CLOSE_BUTTON:Ljava/lang/String;

    .line 111
    const-string v0, "custom_tab_action_bu"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->CUSTOM_TAB_ACTION_BUTTON:Ljava/lang/String;

    .line 112
    const-string v0, "firstrun"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->FIRSTRUN:Ljava/lang/String;

    .line 113
    const-string v0, "download_dialog"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->DOWNLOAD_DIALOG:Ljava/lang/String;

    .line 114
    const-string v0, "add_to_homescreen_dialog"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->ADD_TO_HOMESCREEN_DIALOG:Ljava/lang/String;

    .line 115
    const-string v0, "homescreen_shortcut"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->HOMESCREEN_SHORTCUT:Ljava/lang/String;

    .line 116
    const-string v0, "tabs_tray"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->TABS_TRAY:Ljava/lang/String;

    .line 117
    const-string v0, "recent_apps"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->RECENT_APPS:Ljava/lang/String;

    .line 118
    const-string v0, "app_icon"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->APP_ICON:Ljava/lang/String;

    .line 119
    const-string v0, "autocomplete_domain"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->AUTOCOMPLETE_DOMAIN:Ljava/lang/String;

    .line 120
    const-string v0, "autofill"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->AUTOFILL:Ljava/lang/String;

    .line 121
    const-string v0, "search_engine_setting"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SEARCH_ENGINE_SETTING:Ljava/lang/String;

    .line 122
    const-string v0, "search_engine_learn_more"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->ADD_SEARCH_ENGINE_LEARN_MORE:Ljava/lang/String;

    .line 123
    const-string v0, "custom_search_engine"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->CUSTOM_SEARCH_ENGINE:Ljava/lang/String;

    .line 124
    const-string v0, "remove_search_engines"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->REMOVE_SEARCH_ENGINES:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getADD_SEARCH_ENGINE_LEARN_MORE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->ADD_SEARCH_ENGINE_LEARN_MORE:Ljava/lang/String;

    return-object v0
.end method

.method public final getADD_TO_HOMESCREEN_DIALOG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->ADD_TO_HOMESCREEN_DIALOG:Ljava/lang/String;

    return-object v0
.end method

.method public final getAPP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->APP:Ljava/lang/String;

    return-object v0
.end method

.method public final getAPP_ICON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->APP_ICON:Ljava/lang/String;

    return-object v0
.end method

.method public final getAUTOCOMPLETE_DOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->AUTOCOMPLETE_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public final getAUTOFILL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->AUTOFILL:Ljava/lang/String;

    return-object v0
.end method

.method public final getBACK_BUTTON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BACK_BUTTON:Ljava/lang/String;

    return-object v0
.end method

.method public final getBLOCKING_SWITCH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BLOCKING_SWITCH:Ljava/lang/String;

    return-object v0
.end method

.method public final getBROWSER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BROWSER:Ljava/lang/String;

    return-object v0
.end method

.method public final getBROWSER_CONTEXTMENU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->BROWSER_CONTEXTMENU:Ljava/lang/String;

    return-object v0
.end method

.method public final getCUSTOM_SEARCH_ENGINE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->CUSTOM_SEARCH_ENGINE:Ljava/lang/String;

    return-object v0
.end method

.method public final getCUSTOM_TAB_ACTION_BUTTON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->CUSTOM_TAB_ACTION_BUTTON:Ljava/lang/String;

    return-object v0
.end method

.method public final getCUSTOM_TAB_CLOSE_BUTTON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->CUSTOM_TAB_CLOSE_BUTTON:Ljava/lang/String;

    return-object v0
.end method

.method public final getDESKTOP_REQUEST_CHECK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->DESKTOP_REQUEST_CHECK:Ljava/lang/String;

    return-object v0
.end method

.method public final getDOWNLOAD_DIALOG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->DOWNLOAD_DIALOG:Ljava/lang/String;

    return-object v0
.end method

.method public final getERASE_BUTTON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->ERASE_BUTTON:Ljava/lang/String;

    return-object v0
.end method

.method public final getFIRSTRUN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->FIRSTRUN:Ljava/lang/String;

    return-object v0
.end method

.method public final getHOMESCREEN_SHORTCUT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->HOMESCREEN_SHORTCUT:Ljava/lang/String;

    return-object v0
.end method

.method public final getMENU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->MENU:Ljava/lang/String;

    return-object v0
.end method

.method public final getNOTIFICATION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->NOTIFICATION:Ljava/lang/String;

    return-object v0
.end method

.method public final getNOTIFICATION_ACTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->NOTIFICATION_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public final getRECENT_APPS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->RECENT_APPS:Ljava/lang/String;

    return-object v0
.end method

.method public final getREMOVE_SEARCH_ENGINES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->REMOVE_SEARCH_ENGINES:Ljava/lang/String;

    return-object v0
.end method

.method public final getSEARCH_BAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SEARCH_BAR:Ljava/lang/String;

    return-object v0
.end method

.method public final getSEARCH_ENGINE_SETTING()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SEARCH_ENGINE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method public final getSETTING()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SETTING:Ljava/lang/String;

    return-object v0
.end method

.method public final getSHORTCUT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->SHORTCUT:Ljava/lang/String;

    return-object v0
.end method

.method public final getTABS_TRAY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->TABS_TRAY:Ljava/lang/String;

    return-object v0
.end method
