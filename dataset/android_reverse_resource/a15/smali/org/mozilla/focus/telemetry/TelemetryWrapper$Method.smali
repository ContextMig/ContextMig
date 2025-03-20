.class final Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;
.super Ljava/lang/Object;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Method"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final BACKGROUND:Ljava/lang/String; = "background"

# The value of this static final field might be set in the static constructor
.field private static final CANCEL:Ljava/lang/String; = "cancel"

# The value of this static final field might be set in the static constructor
.field private static final CHANGE:Ljava/lang/String; = "change"

# The value of this static final field might be set in the static constructor
.field private static final CLICK:Ljava/lang/String; = "click"

# The value of this static final field might be set in the static constructor
.field private static final COPY:Ljava/lang/String; = "copy"

# The value of this static final field might be set in the static constructor
.field private static final FOREGROUND:Ljava/lang/String; = "foreground"

# The value of this static final field might be set in the static constructor
.field private static final HIDE:Ljava/lang/String; = "hide"

# The value of this static final field might be set in the static constructor
.field private static final INSTALL:Ljava/lang/String; = "install"

.field public static final INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

# The value of this static final field might be set in the static constructor
.field private static final INTENT_CUSTOM_TAB:Ljava/lang/String; = "intent_custom_tab"

# The value of this static final field might be set in the static constructor
.field private static final INTENT_URL:Ljava/lang/String; = "intent_url"

# The value of this static final field might be set in the static constructor
.field private static final LONG_PRESS:Ljava/lang/String; = "long_press"

# The value of this static final field might be set in the static constructor
.field private static final OPEN:Ljava/lang/String; = "open"

# The value of this static final field might be set in the static constructor
.field private static final PAGE:Ljava/lang/String; = "page"

# The value of this static final field might be set in the static constructor
.field private static final REMOVE:Ljava/lang/String; = "remove"

# The value of this static final field might be set in the static constructor
.field private static final REORDER:Ljava/lang/String; = "reorder"

# The value of this static final field might be set in the static constructor
.field private static final RESOURCE:Ljava/lang/String; = "resource"

# The value of this static final field might be set in the static constructor
.field private static final RESTORE:Ljava/lang/String; = "restore"

# The value of this static final field might be set in the static constructor
.field private static final SAVE:Ljava/lang/String; = "save"

# The value of this static final field might be set in the static constructor
.field private static final SHARE:Ljava/lang/String; = "share"

# The value of this static final field might be set in the static constructor
.field private static final SHARE_INTENT:Ljava/lang/String; = "share_intent"

# The value of this static final field might be set in the static constructor
.field private static final SHOW:Ljava/lang/String; = "show"

# The value of this static final field might be set in the static constructor
.field private static final SWIPE:Ljava/lang/String; = "swipe"

# The value of this static final field might be set in the static constructor
.field private static final TEXT_SELECTION_INTENT:Ljava/lang/String; = "text_selection_intent"

# The value of this static final field might be set in the static constructor
.field private static final TYPE_QUERY:Ljava/lang/String; = "type_query"

# The value of this static final field might be set in the static constructor
.field private static final TYPE_SELECT_QUERY:Ljava/lang/String; = "select_query"

# The value of this static final field might be set in the static constructor
.field private static final TYPE_URL:Ljava/lang/String; = "type_url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;-><init>()V

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    .line 68
    const-string v0, "type_url"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TYPE_URL:Ljava/lang/String;

    .line 69
    const-string v0, "type_query"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TYPE_QUERY:Ljava/lang/String;

    .line 70
    const-string v0, "select_query"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TYPE_SELECT_QUERY:Ljava/lang/String;

    .line 71
    const-string v0, "click"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->CLICK:Ljava/lang/String;

    .line 72
    const-string v0, "swipe"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SWIPE:Ljava/lang/String;

    .line 73
    const-string v0, "cancel"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->CANCEL:Ljava/lang/String;

    .line 74
    const-string v0, "long_press"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->LONG_PRESS:Ljava/lang/String;

    .line 75
    const-string v0, "change"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->CHANGE:Ljava/lang/String;

    .line 76
    const-string v0, "foreground"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->FOREGROUND:Ljava/lang/String;

    .line 77
    const-string v0, "background"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->BACKGROUND:Ljava/lang/String;

    .line 78
    const-string v0, "share"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SHARE:Ljava/lang/String;

    .line 79
    const-string v0, "save"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SAVE:Ljava/lang/String;

    .line 80
    const-string v0, "copy"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->COPY:Ljava/lang/String;

    .line 81
    const-string v0, "open"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->OPEN:Ljava/lang/String;

    .line 82
    const-string v0, "install"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTALL:Ljava/lang/String;

    .line 83
    const-string v0, "intent_url"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INTENT_URL:Ljava/lang/String;

    .line 84
    const-string v0, "intent_custom_tab"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INTENT_CUSTOM_TAB:Ljava/lang/String;

    .line 85
    const-string v0, "text_selection_intent"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TEXT_SELECTION_INTENT:Ljava/lang/String;

    .line 86
    const-string v0, "show"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SHOW:Ljava/lang/String;

    .line 87
    const-string v0, "hide"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->HIDE:Ljava/lang/String;

    .line 88
    const-string v0, "share_intent"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SHARE_INTENT:Ljava/lang/String;

    .line 89
    const-string v0, "remove"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->REMOVE:Ljava/lang/String;

    .line 90
    const-string v0, "reorder"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->REORDER:Ljava/lang/String;

    .line 91
    const-string v0, "restore"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->RESTORE:Ljava/lang/String;

    .line 92
    const-string v0, "page"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->PAGE:Ljava/lang/String;

    .line 93
    const-string v0, "resource"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->RESOURCE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBACKGROUND()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->BACKGROUND:Ljava/lang/String;

    return-object v0
.end method

.method public final getCANCEL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->CANCEL:Ljava/lang/String;

    return-object v0
.end method

.method public final getCHANGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getCLICK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->CLICK:Ljava/lang/String;

    return-object v0
.end method

.method public final getCOPY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->COPY:Ljava/lang/String;

    return-object v0
.end method

.method public final getFOREGROUND()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->FOREGROUND:Ljava/lang/String;

    return-object v0
.end method

.method public final getHIDE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->HIDE:Ljava/lang/String;

    return-object v0
.end method

.method public final getINSTALL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTALL:Ljava/lang/String;

    return-object v0
.end method

.method public final getINTENT_CUSTOM_TAB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INTENT_CUSTOM_TAB:Ljava/lang/String;

    return-object v0
.end method

.method public final getINTENT_URL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INTENT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public final getLONG_PRESS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->LONG_PRESS:Ljava/lang/String;

    return-object v0
.end method

.method public final getOPEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->OPEN:Ljava/lang/String;

    return-object v0
.end method

.method public final getPAGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->PAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getREMOVE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->REMOVE:Ljava/lang/String;

    return-object v0
.end method

.method public final getREORDER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->REORDER:Ljava/lang/String;

    return-object v0
.end method

.method public final getRESOURCE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->RESOURCE:Ljava/lang/String;

    return-object v0
.end method

.method public final getRESTORE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->RESTORE:Ljava/lang/String;

    return-object v0
.end method

.method public final getSAVE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SAVE:Ljava/lang/String;

    return-object v0
.end method

.method public final getSHARE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SHARE:Ljava/lang/String;

    return-object v0
.end method

.method public final getSHARE_INTENT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SHARE_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method public final getSHOW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SHOW:Ljava/lang/String;

    return-object v0
.end method

.method public final getSWIPE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->SWIPE:Ljava/lang/String;

    return-object v0
.end method

.method public final getTEXT_SELECTION_INTENT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TEXT_SELECTION_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method public final getTYPE_QUERY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TYPE_QUERY:Ljava/lang/String;

    return-object v0
.end method

.method public final getTYPE_SELECT_QUERY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TYPE_SELECT_QUERY:Ljava/lang/String;

    return-object v0
.end method

.method public final getTYPE_URL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->TYPE_URL:Ljava/lang/String;

    return-object v0
.end method
