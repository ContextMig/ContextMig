.class public Lme/writeily/editor/HighlightingEditor;
.super Landroid/widget/EditText;
.source "HighlightingEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/writeily/editor/HighlightingEditor$IndentationFilter;,
        Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DEFAULT_DELAY:I = 0x1f4


# instance fields
.field private highlighter:Lme/writeily/editor/Highlighter;

.field private modified:Z

.field private onTextChangedListener:Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;

.field private prefs:Landroid/content/SharedPreferences;

.field private final updateHandler:Landroid/os/Handler;

.field private final updateRunnable:Ljava/lang/Runnable;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/HighlightingEditor;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6fbd755013628705L    # -2.388603003520448E-230

    const-string v2, "me/writeily/editor/HighlightingEditor"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/HighlightingEditor;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->onTextChangedListener:Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;

    aput-boolean v3, v0, v4

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->updateHandler:Landroid/os/Handler;

    aput-boolean v3, v0, v3

    .line 29
    new-instance v1, Lme/writeily/editor/HighlightingEditor$1;

    invoke-direct {v1, p0}, Lme/writeily/editor/HighlightingEditor$1;-><init>(Lme/writeily/editor/HighlightingEditor;)V

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->updateRunnable:Ljava/lang/Runnable;

    .line 41
    iput-boolean v3, p0, Lme/writeily/editor/HighlightingEditor;->modified:Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 45
    invoke-virtual {p0}, Lme/writeily/editor/HighlightingEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 46
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor;->prefs:Landroid/content/SharedPreferences;

    const v2, 0x7f0600a7

    invoke-direct {p0, v2}, Lme/writeily/editor/HighlightingEditor;->getStringFromStringTable(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 49
    :goto_0
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void

    .line 46
    :cond_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 47
    invoke-direct {p0}, Lme/writeily/editor/HighlightingEditor;->init()V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->onTextChangedListener:Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->updateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 29
    new-instance v1, Lme/writeily/editor/HighlightingEditor$1;

    invoke-direct {v1, p0}, Lme/writeily/editor/HighlightingEditor$1;-><init>(Lme/writeily/editor/HighlightingEditor;)V

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->updateRunnable:Ljava/lang/Runnable;

    .line 41
    iput-boolean v4, p0, Lme/writeily/editor/HighlightingEditor;->modified:Z

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 53
    invoke-virtual {p0}, Lme/writeily/editor/HighlightingEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/editor/HighlightingEditor;->prefs:Landroid/content/SharedPreferences;

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 54
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor;->prefs:Landroid/content/SharedPreferences;

    const v2, 0x7f0600a7

    invoke-direct {p0, v2}, Lme/writeily/editor/HighlightingEditor;->getStringFromStringTable(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    .line 57
    :goto_0
    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    return-void

    .line 54
    :cond_0
    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 55
    invoke-direct {p0}, Lme/writeily/editor/HighlightingEditor;->init()V

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lme/writeily/editor/HighlightingEditor;)Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor;->onTextChangedListener:Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;

    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lme/writeily/editor/HighlightingEditor;Landroid/text/Editable;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0, p1}, Lme/writeily/editor/HighlightingEditor;->highlightWithoutChange(Landroid/text/Editable;)V

    const/16 v1, 0x21

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lme/writeily/editor/HighlightingEditor;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Lme/writeily/editor/HighlightingEditor;->cancelUpdate()V

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lme/writeily/editor/HighlightingEditor;)Z
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lme/writeily/editor/HighlightingEditor;->modified:Z

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$500(Lme/writeily/editor/HighlightingEditor;)Ljava/lang/Runnable;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor;->updateRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x24

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lme/writeily/editor/HighlightingEditor;)Landroid/os/Handler;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor;->updateHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private cancelUpdate()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor;->updateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lme/writeily/editor/HighlightingEditor;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getHighlightingDelayFromPrefs()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v1

    .line 116
    iget-object v0, p0, Lme/writeily/editor/HighlightingEditor;->prefs:Landroid/content/SharedPreferences;

    const v2, 0x7f0600a8

    invoke-direct {p0, v2}, Lme/writeily/editor/HighlightingEditor;->getStringFromStringTable(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-boolean v4, v1, v2

    .line 117
    if-nez v0, :cond_0

    const/16 v0, 0x1b

    aput-boolean v4, v1, v0

    :goto_0
    const/16 v0, 0x1f4

    const/16 v2, 0x1d

    aput-boolean v4, v1, v2

    :goto_1
    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    return v0

    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1c

    aput-boolean v4, v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x1e

    aput-boolean v4, v1, v2

    goto :goto_1
.end method

.method private getStringFromStringTable(I)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lme/writeily/editor/HighlightingEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private highlightWithoutChange(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lme/writeily/editor/HighlightingEditor;->modified:Z

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 107
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor;->highlighter:Lme/writeily/editor/Highlighter;

    invoke-virtual {v1, p1}, Lme/writeily/editor/Highlighter;->run(Landroid/text/Editable;)Landroid/text/Editable;

    .line 108
    iput-boolean v2, p0, Lme/writeily/editor/HighlightingEditor;->modified:Z

    .line 109
    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    new-array v1, v8, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lme/writeily/editor/HighlightingEditor$IndentationFilter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;-><init>(Lme/writeily/editor/HighlightingEditor;Lme/writeily/editor/HighlightingEditor$1;)V

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lme/writeily/editor/HighlightingEditor;->setFilters([Landroid/text/InputFilter;)V

    const/16 v1, 0x10

    aput-boolean v8, v0, v1

    .line 63
    invoke-direct {p0}, Lme/writeily/editor/HighlightingEditor;->getHighlightingDelayFromPrefs()I

    move-result v1

    const/16 v2, 0x11

    aput-boolean v8, v0, v2

    .line 65
    new-instance v2, Lme/writeily/editor/Highlighter;

    new-instance v3, Lme/writeily/editor/MyHighlighterColorsNeutral;

    invoke-direct {v3}, Lme/writeily/editor/MyHighlighterColorsNeutral;-><init>()V

    iget-object v4, p0, Lme/writeily/editor/HighlightingEditor;->prefs:Landroid/content/SharedPreferences;

    const v5, 0x7f0600a5

    const/16 v6, 0x12

    aput-boolean v8, v0, v6

    .line 66
    invoke-direct {p0, v5}, Lme/writeily/editor/HighlightingEditor;->getStringFromStringTable(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lme/writeily/editor/HighlightingEditor;->prefs:Landroid/content/SharedPreferences;

    const v6, 0x7f0600a6

    const/16 v7, 0x13

    aput-boolean v8, v0, v7

    .line 67
    invoke-direct {p0, v6}, Lme/writeily/editor/HighlightingEditor;->getStringFromStringTable(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lme/writeily/editor/Highlighter;-><init>(Lme/writeily/editor/HighlighterColors;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lme/writeily/editor/HighlightingEditor;->highlighter:Lme/writeily/editor/Highlighter;

    const/16 v2, 0x14

    aput-boolean v8, v0, v2

    .line 69
    new-instance v2, Lme/writeily/editor/HighlightingEditor$2;

    invoke-direct {v2, p0, v1}, Lme/writeily/editor/HighlightingEditor$2;-><init>(Lme/writeily/editor/HighlightingEditor;I)V

    invoke-virtual {p0, v2}, Lme/writeily/editor/HighlightingEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    const/16 v1, 0x15

    aput-boolean v8, v0, v1

    return-void
.end method
