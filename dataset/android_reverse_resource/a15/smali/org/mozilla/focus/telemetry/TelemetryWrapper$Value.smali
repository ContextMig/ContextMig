.class final Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;
.super Ljava/lang/Object;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Value"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ADD_TO_HOMESCREEN:Ljava/lang/String; = "add_to_homescreen"

# The value of this static final field might be set in the static constructor
.field private static final CANCEL:Ljava/lang/String; = "cancel"

# The value of this static final field might be set in the static constructor
.field private static final CUSTOM_TAB:Ljava/lang/String; = "custom_tab"

# The value of this static final field might be set in the static constructor
.field private static final DEFAULT:Ljava/lang/String; = "default"

# The value of this static final field might be set in the static constructor
.field private static final DOWNLOAD:Ljava/lang/String; = "download"

# The value of this static final field might be set in the static constructor
.field private static final ERASE:Ljava/lang/String; = "erase"

# The value of this static final field might be set in the static constructor
.field private static final ERASE_AND_OPEN:Ljava/lang/String; = "erase_open"

# The value of this static final field might be set in the static constructor
.field private static final ERASE_TO_APP:Ljava/lang/String; = "erase_app"

# The value of this static final field might be set in the static constructor
.field private static final ERASE_TO_HOME:Ljava/lang/String; = "erase_home"

# The value of this static final field might be set in the static constructor
.field private static final FIND_IN_PAGE:Ljava/lang/String; = "find_in_page"

# The value of this static final field might be set in the static constructor
.field private static final FINISH:Ljava/lang/String; = "finish"

# The value of this static final field might be set in the static constructor
.field private static final FIREFOX:Ljava/lang/String; = "firefox"

# The value of this static final field might be set in the static constructor
.field private static final FULL_BROWSER:Ljava/lang/String; = "full_browser"

# The value of this static final field might be set in the static constructor
.field private static final IMAGE:Ljava/lang/String; = "image"

# The value of this static final field might be set in the static constructor
.field private static final IMAGE_WITH_LINK:Ljava/lang/String; = "image+link"

.field public static final INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

# The value of this static final field might be set in the static constructor
.field private static final LINK:Ljava/lang/String; = "link"

# The value of this static final field might be set in the static constructor
.field private static final OPEN:Ljava/lang/String; = "open"

# The value of this static final field might be set in the static constructor
.field private static final QUICK_ADD:Ljava/lang/String; = "quick_add"

# The value of this static final field might be set in the static constructor
.field private static final RELOAD:Ljava/lang/String; = "refresh"

# The value of this static final field might be set in the static constructor
.field private static final REPORT_ISSUE:Ljava/lang/String; = "report_issue"

# The value of this static final field might be set in the static constructor
.field private static final RESUME:Ljava/lang/String; = "resume"

# The value of this static final field might be set in the static constructor
.field private static final SEARCH:Ljava/lang/String; = "search"

# The value of this static final field might be set in the static constructor
.field private static final SELECTION:Ljava/lang/String; = "selection"

# The value of this static final field might be set in the static constructor
.field private static final SETTINGS:Ljava/lang/String; = "settings"

# The value of this static final field might be set in the static constructor
.field private static final SKIP:Ljava/lang/String; = "skip"

# The value of this static final field might be set in the static constructor
.field private static final TAB:Ljava/lang/String; = "tab"

# The value of this static final field might be set in the static constructor
.field private static final URL:Ljava/lang/String; = "url"

# The value of this static final field might be set in the static constructor
.field private static final WHATS_NEW:Ljava/lang/String; = "whats_new"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;-><init>()V

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    .line 128
    const-string v0, "default"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->DEFAULT:Ljava/lang/String;

    .line 129
    const-string v0, "firefox"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FIREFOX:Ljava/lang/String;

    .line 130
    const-string v0, "selection"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SELECTION:Ljava/lang/String;

    .line 131
    const-string v0, "erase"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE:Ljava/lang/String;

    .line 132
    const-string v0, "erase_open"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE_AND_OPEN:Ljava/lang/String;

    .line 133
    const-string v0, "erase_home"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE_TO_HOME:Ljava/lang/String;

    .line 134
    const-string v0, "erase_app"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE_TO_APP:Ljava/lang/String;

    .line 135
    const-string v0, "image"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->IMAGE:Ljava/lang/String;

    .line 136
    const-string v0, "link"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->LINK:Ljava/lang/String;

    .line 137
    const-string v0, "image+link"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->IMAGE_WITH_LINK:Ljava/lang/String;

    .line 138
    const-string v0, "custom_tab"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->CUSTOM_TAB:Ljava/lang/String;

    .line 139
    const-string v0, "skip"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SKIP:Ljava/lang/String;

    .line 140
    const-string v0, "finish"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FINISH:Ljava/lang/String;

    .line 141
    const-string v0, "open"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->OPEN:Ljava/lang/String;

    .line 142
    const-string v0, "download"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->DOWNLOAD:Ljava/lang/String;

    .line 143
    const-string v0, "url"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->URL:Ljava/lang/String;

    .line 144
    const-string v0, "search"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SEARCH:Ljava/lang/String;

    .line 145
    const-string v0, "cancel"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->CANCEL:Ljava/lang/String;

    .line 146
    const-string v0, "add_to_homescreen"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ADD_TO_HOMESCREEN:Ljava/lang/String;

    .line 147
    const-string v0, "tab"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->TAB:Ljava/lang/String;

    .line 148
    const-string v0, "whats_new"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->WHATS_NEW:Ljava/lang/String;

    .line 149
    const-string v0, "resume"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->RESUME:Ljava/lang/String;

    .line 150
    const-string v0, "refresh"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->RELOAD:Ljava/lang/String;

    .line 151
    const-string v0, "full_browser"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FULL_BROWSER:Ljava/lang/String;

    .line 152
    const-string v0, "report_issue"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->REPORT_ISSUE:Ljava/lang/String;

    .line 153
    const-string v0, "settings"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SETTINGS:Ljava/lang/String;

    .line 154
    const-string v0, "quick_add"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->QUICK_ADD:Ljava/lang/String;

    .line 155
    const-string v0, "find_in_page"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FIND_IN_PAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getADD_TO_HOMESCREEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ADD_TO_HOMESCREEN:Ljava/lang/String;

    return-object v0
.end method

.method public final getCANCEL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->CANCEL:Ljava/lang/String;

    return-object v0
.end method

.method public final getCUSTOM_TAB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->CUSTOM_TAB:Ljava/lang/String;

    return-object v0
.end method

.method public final getDEFAULT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->DEFAULT:Ljava/lang/String;

    return-object v0
.end method

.method public final getDOWNLOAD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->DOWNLOAD:Ljava/lang/String;

    return-object v0
.end method

.method public final getERASE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE:Ljava/lang/String;

    return-object v0
.end method

.method public final getERASE_AND_OPEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE_AND_OPEN:Ljava/lang/String;

    return-object v0
.end method

.method public final getERASE_TO_APP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE_TO_APP:Ljava/lang/String;

    return-object v0
.end method

.method public final getERASE_TO_HOME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->ERASE_TO_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public final getFIND_IN_PAGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FIND_IN_PAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getFINISH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FINISH:Ljava/lang/String;

    return-object v0
.end method

.method public final getFIREFOX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FIREFOX:Ljava/lang/String;

    return-object v0
.end method

.method public final getFULL_BROWSER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->FULL_BROWSER:Ljava/lang/String;

    return-object v0
.end method

.method public final getIMAGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->IMAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getIMAGE_WITH_LINK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->IMAGE_WITH_LINK:Ljava/lang/String;

    return-object v0
.end method

.method public final getLINK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->LINK:Ljava/lang/String;

    return-object v0
.end method

.method public final getOPEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->OPEN:Ljava/lang/String;

    return-object v0
.end method

.method public final getQUICK_ADD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->QUICK_ADD:Ljava/lang/String;

    return-object v0
.end method

.method public final getRELOAD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->RELOAD:Ljava/lang/String;

    return-object v0
.end method

.method public final getREPORT_ISSUE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->REPORT_ISSUE:Ljava/lang/String;

    return-object v0
.end method

.method public final getRESUME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->RESUME:Ljava/lang/String;

    return-object v0
.end method

.method public final getSEARCH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SEARCH:Ljava/lang/String;

    return-object v0
.end method

.method public final getSELECTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SELECTION:Ljava/lang/String;

    return-object v0
.end method

.method public final getSETTINGS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SETTINGS:Ljava/lang/String;

    return-object v0
.end method

.method public final getSKIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->SKIP:Ljava/lang/String;

    return-object v0
.end method

.method public final getTAB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->TAB:Ljava/lang/String;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public final getWHATS_NEW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->WHATS_NEW:Ljava/lang/String;

    return-object v0
.end method
