.class public abstract Lcom/tokenautocomplete/TokenCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;,
        Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/MultiAutoCompleteTextView;",
        "Landroid/widget/TextView$OnEditorActionListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TAG:Ljava/lang/String; = "TokenAutoComplete"


# instance fields
.field private allowCollapse:Z

.field private allowDuplicates:Z

.field private deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field private focusChanging:Z

.field private hiddenSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenImageSpan;>;"
        }
    .end annotation
.end field

.field private hintVisible:Z

.field inInvalidate:Z

.field private initialized:Z

.field private lastLayout:Landroid/text/Layout;

.field private listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private performBestGuess:Z

.field private prefix:Ljava/lang/CharSequence;

.field private savingState:Z

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private shouldFocusNext:Z

.field private spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenSpanWatcher;"
        }
    .end annotation
.end field

.field private splitChar:[C

.field private textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenTextWatcher;"
        }
    .end annotation
.end field

.field private tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field private tokenLimit:I

.field private tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tokenautocomplete/TokenCompleteTextView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 92
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 93
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    .line 95
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 97
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 98
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 99
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 100
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 101
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 102
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 103
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 504
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 201
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    .line 202
    return-void

    .line 84
    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 92
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 93
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    .line 95
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 97
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 98
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 99
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 100
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 101
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 102
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 103
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 504
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 206
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    .line 207
    return-void

    .line 84
    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 92
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 93
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    .line 95
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 97
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 98
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 99
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 100
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 101
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 102
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 103
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 504
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 211
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    .line 212
    return-void

    .line 84
    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method static synthetic access$1000(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 0
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;
    .param p1, "x1"    # Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tokenautocomplete/TokenCompleteTextView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/tokenautocomplete/TokenCompleteTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    return v0
.end method

.method static synthetic access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;
    .param p1, "x1"    # C

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->isSplitChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    return v0
.end method

.method static synthetic access$700(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    return-object v0
.end method

.method private api16Invalidate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 510
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowColor()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setShadowLayer(FFFI)V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 513
    :cond_0
    return-void
.end method

.method private buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 853
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    const/4 v2, 0x0

    aget-char v0, v1, v2

    .line 854
    .local v0, "sentinel":C
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private clearSelections()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v4, 0x0

    .line 1168
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1171
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1173
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v0, v4, v3, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1174
    .local v2, "tokens":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v5, v2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v2, v3

    .line 1175
    .local v1, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v6, v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1177
    .end local v1    # "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    goto :goto_0
.end method

.method private deleteSelectedObject(Z)Z
    .locals 7
    .param p1, "handled"    # Z

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v4, 0x0

    .line 617
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 619
    .local v3, "text":Landroid/text/Editable;
    if-nez v3, :cond_0

    move v0, p1

    .line 630
    .end local v3    # "text":Landroid/text/Editable;
    .end local p1    # "handled":Z
    .local v0, "handled":Z
    :goto_0
    return v0

    .line 621
    .end local v0    # "handled":Z
    .restart local v3    # "text":Landroid/text/Editable;
    .restart local p1    # "handled":Z
    :cond_0
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 622
    .local v2, "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 623
    .local v1, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v6, v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 624
    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    .line 625
    const/4 p1, 0x1

    .end local v1    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .end local v2    # "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .end local v3    # "text":Landroid/text/Editable;
    :cond_1
    move v0, p1

    .line 630
    .end local p1    # "handled":Z
    .restart local v0    # "handled":Z
    goto :goto_0

    .line 622
    .end local v0    # "handled":Z
    .restart local v1    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .restart local v2    # "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .restart local v3    # "text":Landroid/text/Editable;
    .restart local p1    # "handled":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getCorrectedTokenBeginning(I)I
    .locals 3
    .param p1, "end"    # I

    .prologue
    .line 482
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 483
    .local v0, "start":I
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 486
    :cond_0
    return v0
.end method

.method private getCorrectedTokenEnd()I
    .locals 3

    .prologue
    .line 476
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 477
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 478
    .local v0, "cursorPosition":I
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    return v2
.end method

.method private handleDone()V
    .locals 3

    .prologue
    .line 578
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 581
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 583
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 584
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    if-eqz v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v1, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v1}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 142
    .local v0, "text":Landroid/text/Editable;
    sget-boolean v1, Lcom/tokenautocomplete/TokenCompleteTextView;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 143
    :cond_1
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-direct {v1, p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 144
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    invoke-direct {v1, p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 148
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 150
    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTextIsSelectable(Z)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setLongClickable(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setInputType(I)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setHorizontallyScrolling(Z)V

    .line 158
    invoke-virtual {p0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$1;

    invoke-direct {v2, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$1;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 195
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;)V

    .line 196
    iput-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    goto :goto_0
.end method

.method private insertSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenImageSpan;)V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Ljava/lang/Object;)V

    .line 1085
    return-void
.end method

.method private insertSpan(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1074
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    if-ne v1, v2, :cond_1

    .line 1075
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "spanString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1081
    return-void

    .line 1075
    .end local v0    # "spanString":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1077
    :cond_1
    const-string v0, ""

    .restart local v0    # "spanString":Ljava/lang/String;
    goto :goto_0
.end method

.method private insertSpan(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 8
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 1030
    invoke-direct {p0, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1031
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    move-result-object v4

    .line 1033
    .local v4, "tokenSpan":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1034
    .local v1, "editable":Landroid/text/Editable;
    if-nez v1, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-boolean v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1038
    :cond_2
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1040
    .local v2, "offset":I
    iget-boolean v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v5, :cond_4

    .line 1042
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1043
    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1053
    :goto_1
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x21

    invoke-interface {v1, v4, v2, v5, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1056
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0, v7}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 1060
    :cond_3
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1061
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-virtual {v5, v1, v4, v7, v7}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1045
    :cond_4
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "completionText":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 1049
    invoke-static {v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 1051
    :cond_5
    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 1064
    .end local v0    # "completionText":Ljava/lang/String;
    .end local v2    # "offset":I
    :cond_6
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-virtual {v5, v1, v4, v7, v7}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1067
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    goto :goto_0
.end method

.method private isSplitChar(C)Z
    .locals 5
    .param p1, "c"    # C

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v1, 0x0

    .line 337
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 338
    .local v0, "split":C
    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    .line 340
    .end local v0    # "split":C
    :cond_0
    return v1

    .line 337
    .restart local v0    # "split":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenImageSpan;)V"
        }
    .end annotation

    .prologue
    .line 1006
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1007
    .local v1, "text":Landroid/text/Editable;
    if-nez v1, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 1011
    .local v0, "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    array-length v2, v0

    if-nez v2, :cond_2

    .line 1012
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1016
    :cond_2
    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1018
    iget-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    goto :goto_0
.end method

.method private updateCountSpan()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v4, 0x0

    .line 984
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 985
    .local v3, "text":Landroid/text/Editable;
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/tokenautocomplete/CountSpan;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/CountSpan;

    .line 986
    .local v1, "counts":[Lcom/tokenautocomplete/CountSpan;
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 987
    .local v2, "newCount":I
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 988
    .local v0, "count":Lcom/tokenautocomplete/CountSpan;
    if-nez v2, :cond_0

    .line 990
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 991
    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 987
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 994
    :cond_0
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    .line 995
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v3, v0, v6, v7, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 998
    .end local v0    # "count":Lcom/tokenautocomplete/CountSpan;
    :cond_1
    return-void
.end method

.method private updateHint()V
    .locals 14

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v5, 0x0

    .line 1115
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    .line 1116
    .local v12, "text":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1117
    .local v7, "hintText":Ljava/lang/CharSequence;
    if-eqz v12, :cond_0

    if-nez v7, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1123
    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Lcom/tokenautocomplete/HintSpan;

    invoke-interface {v12, v5, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/tokenautocomplete/HintSpan;

    .line 1124
    .local v8, "hints":[Lcom/tokenautocomplete/HintSpan;
    const/4 v6, 0x0

    .line 1125
    .local v6, "hint":Lcom/tokenautocomplete/HintSpan;
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 1126
    .local v11, "testLength":I
    array-length v1, v8

    if-lez v1, :cond_2

    .line 1127
    aget-object v6, v8, v5

    .line 1128
    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v11, v1

    .line 1131
    :cond_2
    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v1, v11, :cond_4

    .line 1132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 1134
    if-nez v6, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    .line 1140
    .local v13, "tf":Landroid/graphics/Typeface;
    const/4 v2, 0x0

    .line 1141
    .local v2, "style":I
    if-eqz v13, :cond_3

    .line 1142
    invoke-virtual {v13}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .line 1144
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1146
    .local v4, "colors":Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/tokenautocomplete/HintSpan;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/tokenautocomplete/HintSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 1147
    .local v0, "hintSpan":Lcom/tokenautocomplete/HintSpan;
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v12, v1, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1148
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0x21

    invoke-interface {v12, v0, v1, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1149
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 1151
    .end local v0    # "hintSpan":Lcom/tokenautocomplete/HintSpan;
    .end local v2    # "style":I
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v13    # "tf":Landroid/graphics/Typeface;
    :cond_4
    if-eqz v6, :cond_0

    .line 1156
    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 1157
    .local v10, "sStart":I
    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 1159
    .local v9, "sEnd":I
    invoke-interface {v12, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1160
    const-string v1, ""

    invoke-interface {v12, v10, v9, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1162
    iput-boolean v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected addListeners()V
    .locals 5

    .prologue
    .line 111
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 112
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 114
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    :cond_0
    return-void
.end method

.method public addObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 936
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 937
    return-void
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$3;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 928
    return-void
.end method

.method public allowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 374
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 375
    return-void
.end method

.method public allowDuplicates(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 353
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 354
    return-void
.end method

.method protected buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenImageSpan;"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 859
    const/4 v1, 0x0

    .line 862
    :goto_0
    return-object v1

    .line 861
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getViewForObject(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 862
    .local v0, "tokenView":Landroid/view/View;
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public canDeleteSelection(I)Z
    .locals 12
    .param p1, "beforeLength"    # I

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1499
    iget-object v9, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v7, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return v7

    .line 1504
    :cond_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 1505
    .local v0, "endSelection":I
    if-ne p1, v7, :cond_3

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionStart()I

    move-result v4

    .line 1507
    .local v4, "startSelection":I
    :goto_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1508
    .local v6, "text":Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v9

    const-class v10, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v6, v8, v9, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1512
    .local v3, "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v10, v3

    move v9, v8

    :goto_2
    if-ge v9, v10, :cond_0

    aget-object v2, v3, v9

    .line 1513
    .local v2, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-interface {v6, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1514
    .local v5, "startTokenSelection":I
    invoke-interface {v6, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1517
    .local v1, "endTokenSelection":I
    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->access$1800(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/tokenautocomplete/TokenCompleteTextView;->isTokenRemovable(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1512
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1505
    .end local v1    # "endTokenSelection":I
    .end local v2    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .end local v3    # "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .end local v4    # "startSelection":I
    .end local v5    # "startTokenSelection":I
    .end local v6    # "text":Landroid/text/Editable;
    :cond_3
    sub-int v4, v0, p1

    goto :goto_1

    .line 1519
    .restart local v1    # "endTokenSelection":I
    .restart local v2    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .restart local v3    # "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .restart local v4    # "startSelection":I
    .restart local v5    # "startTokenSelection":I
    .restart local v6    # "text":Landroid/text/Editable;
    :cond_4
    if-ne v4, v0, :cond_5

    .line 1521
    add-int/lit8 v11, v1, 0x1

    if-ne v11, v0, :cond_2

    move v7, v8

    .line 1522
    goto :goto_0

    .line 1527
    :cond_5
    if-gt v4, v5, :cond_2

    add-int/lit8 v11, v1, 0x1

    if-gt v11, v0, :cond_2

    move v7, v8

    .line 1529
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1095
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$5;

    invoke-direct {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$5;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1112
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 832
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 835
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$7;->$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle:[I

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 844
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 837
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 839
    :pswitch_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 841
    :pswitch_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected convertSerializableArrayToObjectArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/Serializable;",
            ">;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/Serializable;>;"
    return-object p1
.end method

.method protected currentCompletionText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 490
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iget-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 497
    :goto_0
    return-object v3

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 493
    .local v0, "editable":Landroid/text/Editable;
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCorrectedTokenEnd()I

    move-result v1

    .line 494
    .local v1, "end":I
    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCorrectedTokenBeginning(I)I

    move-result v2

    .line 497
    .local v2, "start":I
    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected abstract defaultObject(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public enoughToFilter()Z
    .locals 7

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 527
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v5, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v4

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 533
    .local v0, "cursorPosition":I
    if-ltz v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCorrectedTokenEnd()I

    move-result v1

    .line 538
    .local v1, "end":I
    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCorrectedTokenBeginning(I)I

    move-result v2

    .line 541
    .local v2, "start":I
    sub-int v5, v1, v2

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getThreshold()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lt v5, v6, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 904
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 907
    :goto_0
    return v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "ignored":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "TokenAutoComplete"

    const-string v2, "extractText hit IndexOutOfBoundsException. This may be normal."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSerializableObjects()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v2, "serializables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/Serializable;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1336
    .local v1, "obj":Ljava/lang/Object;
    instance-of v4, v1, Ljava/io/Serializable;

    if-eqz v4, :cond_0

    .line 1337
    check-cast v1, Ljava/io/Serializable;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1339
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    const-string v4, "TokenAutoComplete"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1342
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1343
    const-string v0, "You should make your objects Serializable or override\ngetSerializableObjects and convertSerializableArrayToObjectArray"

    .line 1345
    .local v0, "message":Ljava/lang/String;
    const-string v3, "TokenAutoComplete"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    .line 412
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 460
    :cond_0
    :goto_0
    return-object v0

    .line 416
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 417
    .local v0, "description":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 418
    .local v6, "text":Landroid/text/Editable;
    const/4 v5, -0x1

    .line 419
    .local v5, "selectionStart":I
    const/4 v4, -0x1

    .line 424
    .local v4, "selectionEnd":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 426
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 427
    .local v3, "origSelectionStart":I
    if-ne v1, v3, :cond_2

    .line 428
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 430
    :cond_2
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 431
    .local v2, "origSelectionEnd":I
    if-ne v1, v2, :cond_3

    .line 432
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 436
    :cond_3
    const-class v9, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v6, v1, v1, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 437
    .local v8, "tokens":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v9, v8

    if-lez v9, :cond_4

    .line 438
    const/4 v9, 0x0

    aget-object v7, v8, v9

    .line 439
    .local v7, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v9, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {v7}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 440
    invoke-interface {v6, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 424
    .end local v7    # "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_4
    add-int/lit8 v9, v1, 0x1

    invoke-interface {v6, v1, v9}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_2

    .line 447
    .end local v2    # "origSelectionEnd":I
    .end local v3    # "origSelectionStart":I
    .end local v8    # "tokens":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_5
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 448
    .restart local v3    # "origSelectionStart":I
    if-ne v1, v3, :cond_6

    .line 449
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 451
    :cond_6
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 452
    .restart local v2    # "origSelectionEnd":I
    if-ne v1, v2, :cond_7

    .line 453
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 456
    :cond_7
    if-ltz v5, :cond_0

    if-ltz v4, :cond_0

    .line 457
    invoke-static {v0, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method protected abstract getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 518
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->api16Invalidate()V

    .line 522
    :cond_0
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->invalidate()V

    .line 523
    return-void
.end method

.method public isTokenRemovable(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "token":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method

.method protected maxTextWidth()F
    .locals 2

    .prologue
    .line 501
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 561
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 562
    .local v1, "superConn":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 563
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V

    .line 564
    .local v0, "conn":Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenInputConnection;"
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 565
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 568
    .end local v0    # "conn":Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenInputConnection;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 635
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    .line 637
    const/4 v0, 0x1

    .line 639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previous"    # Landroid/graphics/Rect;

    .prologue
    .line 820
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 823
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 826
    :cond_0
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 827
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 465
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 467
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 469
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 470
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 471
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 473
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "handled":Z
    sparse-switch p1, :sswitch_data_0

    .line 613
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 603
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 605
    const/4 v0, 0x1

    goto :goto_0

    .line 609
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->canDeleteSelection(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 588
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 589
    .local v0, "handled":Z
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 591
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    .line 593
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 720
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-super/range {p0 .. p5}, Landroid/widget/MultiAutoCompleteTextView;->onLayout(ZIIII)V

    .line 721
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 722
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1393
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    instance-of v2, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    if-nez v2, :cond_1

    .line 1394
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1426
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 1398
    check-cast v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 1399
    .local v1, "ss":Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1401
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    .line 1403
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    .line 1404
    iget-boolean v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 1405
    iget-boolean v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 1406
    iget-boolean v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 1407
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 1408
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 1409
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->splitChar:[C

    iput-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 1411
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 1412
    iget-object v2, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSerializableArrayToObjectArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1413
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 1417
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz v2, :cond_0

    .line 1418
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$6;

    invoke-direct {v2, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$6;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1358
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSerializableObjects()Ljava/util/ArrayList;

    move-result-object v0

    .line 1362
    .local v0, "baseObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/Serializable;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeListeners()V

    .line 1366
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 1367
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1368
    .local v2, "superState":Landroid/os/Parcelable;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 1369
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    invoke-direct {v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1371
    .local v1, "state":Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/CharSequence;

    .line 1372
    iget-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    iput-boolean v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    .line 1373
    iget-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    iput-boolean v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    .line 1374
    iget-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    iput-boolean v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    .line 1375
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 1376
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 1377
    iput-object v0, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 1378
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    iput-object v3, v1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->splitChar:[C

    .line 1386
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 1388
    return-object v1
.end method

.method protected onSelectionChanged(II)V
    .locals 7
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 678
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iget-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v4, :cond_0

    .line 680
    const/4 p1, 0x0

    .line 683
    :cond_0
    move p2, p1

    .line 685
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 687
    .local v3, "text":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 688
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    .line 693
    .end local v3    # "text":Landroid/text/Editable;
    :cond_1
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt p1, v4, :cond_2

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_3

    .line 695
    :cond_2
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    .line 716
    :goto_0
    return-void

    .line 697
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 698
    .restart local v3    # "text":Landroid/text/Editable;
    if-eqz v3, :cond_6

    .line 700
    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v3, p1, p2, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 701
    .local v2, "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v0, v2, v4

    .line 702
    .local v0, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 703
    .local v1, "spanEnd":I
    if-gt p1, v1, :cond_5

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, p1, :cond_5

    .line 704
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 705
    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 707
    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 701
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 714
    .end local v0    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .end local v1    # "spanEnd":I
    .end local v2    # "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 644
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 645
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 646
    .local v4, "text":Landroid/text/Editable;
    const/4 v1, 0x0

    .line 648
    .local v1, "handled":Z
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    sget-object v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-ne v5, v6, :cond_0

    .line 649
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 656
    .local v3, "offset":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 657
    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v4, v3, v3, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 659
    .local v2, "links":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v5, v2

    if-lez v5, :cond_3

    .line 660
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->onClick()V

    .line 661
    const/4 v1, 0x1

    .line 669
    .end local v2    # "links":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .end local v3    # "offset":I
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    sget-object v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eq v5, v6, :cond_2

    .line 670
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 672
    :cond_2
    return v1

    .line 664
    .restart local v2    # "links":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .restart local v3    # "offset":I
    :cond_3
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    goto :goto_0
.end method

.method public performBestGuess(Z)V
    .locals 0
    .param p1, "guess"    # Z

    .prologue
    .line 364
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 365
    return-void
.end method

.method public performCollapse(Z)V
    .locals 15
    .param p1, "hasFocus"    # Z

    .prologue
    .line 732
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 733
    if-nez p1, :cond_2

    .line 734
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 735
    .local v11, "text":Landroid/text/Editable;
    if-eqz v11, :cond_5

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    if-eqz v2, :cond_5

    .line 737
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v8

    .line 738
    .local v8, "lastPosition":I
    const/4 v2, 0x0

    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v11, v2, v8, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 739
    .local v13, "tokens":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v13

    sub-int v1, v2, v3

    .line 742
    .local v1, "count":I
    const/4 v2, 0x0

    const-class v3, Lcom/tokenautocomplete/CountSpan;

    invoke-interface {v11, v2, v8, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/tokenautocomplete/CountSpan;

    .line 744
    .local v6, "countSpans":[Lcom/tokenautocomplete/CountSpan;
    if-lez v1, :cond_5

    array-length v2, v6

    if-nez v2, :cond_5

    .line 745
    add-int/lit8 v8, v8, 0x1

    .line 746
    new-instance v0, Lcom/tokenautocomplete/CountSpan;

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentTextColor()I

    move-result v3

    .line 747
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/tokenautocomplete/CountSpan;-><init>(ILandroid/content/Context;III)V

    .line 748
    .local v0, "cs":Lcom/tokenautocomplete/CountSpan;
    iget-object v2, v0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-interface {v11, v8, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 750
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 751
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 750
    invoke-static {v11, v2, v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    .line 753
    .local v9, "newWidth":F
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v2

    cmpl-float v2, v9, v2

    if-lez v2, :cond_0

    .line 754
    iget-object v2, v0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v8

    invoke-interface {v11, v8, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 756
    array-length v2, v13

    if-lez v2, :cond_1

    .line 757
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    aget-object v12, v13, v2

    .line 758
    .local v12, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 759
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    .line 764
    .end local v12    # "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :goto_0
    iget-object v2, v0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-interface {v11, v8, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 767
    :cond_0
    iget-object v2, v0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v8

    const/16 v3, 0x21

    invoke-interface {v11, v0, v8, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 772
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 773
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v8

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v11, v2, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 772
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 774
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 775
    .local v10, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-direct {p0, v10}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    goto :goto_1

    .line 761
    .end local v10    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_1
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    goto :goto_0

    .line 780
    .end local v0    # "cs":Lcom/tokenautocomplete/CountSpan;
    .end local v1    # "count":I
    .end local v6    # "countSpans":[Lcom/tokenautocomplete/CountSpan;
    .end local v8    # "lastPosition":I
    .end local v9    # "newWidth":F
    .end local v11    # "text":Landroid/text/Editable;
    .end local v13    # "tokens":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 781
    .restart local v11    # "text":Landroid/text/Editable;
    if-eqz v11, :cond_5

    .line 782
    const/4 v2, 0x0

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/tokenautocomplete/CountSpan;

    invoke-interface {v11, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/tokenautocomplete/CountSpan;

    .line 783
    .local v7, "counts":[Lcom/tokenautocomplete/CountSpan;
    array-length v3, v7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v7, v2

    .line 784
    .local v1, "count":Lcom/tokenautocomplete/CountSpan;
    invoke-interface {v11, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v11, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v11, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 785
    invoke-interface {v11, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 783
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 789
    .end local v1    # "count":Lcom/tokenautocomplete/CountSpan;
    :cond_3
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 790
    .restart local v10    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-direct {p0, v10}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    goto :goto_3

    .line 792
    .end local v10    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_4
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 794
    iget-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v2, :cond_6

    .line 795
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    .line 807
    :goto_4
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 808
    .local v14, "watchers":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    array-length v2, v14

    if-nez v2, :cond_5

    .line 810
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v3, 0x0

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v11, v2, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 815
    .end local v7    # "counts":[Lcom/tokenautocomplete/CountSpan;
    .end local v14    # "watchers":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 816
    return-void

    .line 799
    .restart local v7    # "counts":[Lcom/tokenautocomplete/CountSpan;
    :cond_6
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$2;

    invoke-direct {v2, p0, v11}, Lcom/tokenautocomplete/TokenCompleteTextView$2;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/text/Editable;)V

    const-wide/16 v4, 0xa

    invoke-virtual {p0, v2, v4, v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public performCompletion()V
    .locals 3

    .prologue
    .line 546
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getListSelection()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 553
    .local v0, "bestGuess":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 557
    .end local v0    # "bestGuess":Ljava/lang/Object;
    :goto_1
    return-void

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->defaultObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "bestGuess":Ljava/lang/Object;
    goto :goto_0

    .line 555
    .end local v0    # "bestGuess":Ljava/lang/Object;
    :cond_2
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performCompletion()V

    goto :goto_1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keyCode"    # I

    .prologue
    .line 217
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 221
    .local v0, "filter":Landroid/widget/Filter;
    if-eqz v0, :cond_1

    .line 222
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v1, :cond_2

    .line 223
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_0
.end method

.method protected removeListeners()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 123
    .local v1, "text":Landroid/text/Editable;
    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 125
    .local v0, "spanWatchers":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 126
    .local v2, "watcher":Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    invoke-interface {v1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "watcher":Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    :cond_0
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    .end local v0    # "spanWatchers":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    :cond_1
    return-void
.end method

.method public removeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$4;

    invoke-direct {v0, p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$4;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 867
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearComposingText()V

    .line 870
    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 873
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    move-result-object v6

    .line 875
    .local v6, "tokenSpan":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 876
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 877
    .local v0, "cursorPosition":I
    move v2, v0

    .line 878
    .local v2, "end":I
    move v5, v0

    .line 879
    .local v5, "start":I
    iget-boolean v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-nez v7, :cond_2

    .line 882
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCorrectedTokenEnd()I

    move-result v2

    .line 883
    invoke-direct {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCorrectedTokenBeginning(I)I

    move-result v5

    .line 886
    :cond_2
    invoke-static {v1, v5, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, "original":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 889
    if-nez v6, :cond_3

    .line 890
    const-string v7, ""

    invoke-interface {v1, v5, v2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 891
    :cond_3
    iget-boolean v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 892
    const-string v7, ""

    invoke-interface {v1, v5, v2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 894
    :cond_4
    invoke-static {v1, v5, v2, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 895
    invoke-interface {v1, v5, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 896
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    const/16 v8, 0x21

    invoke-interface {v1, v6, v5, v7, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;)V
    .locals 0
    .param p1, "dStyle"    # Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .prologue
    .line 243
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 244
    return-void
.end method

.method public setPrefix(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "p"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const-string v1, ""

    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    .line 284
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 285
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 288
    :cond_0
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/CharSequence;

    .line 290
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    .line 291
    return-void
.end method

.method public setSplitChar(C)V
    .locals 2
    .param p1, "splitChar"    # C

    .prologue
    .line 327
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSplitChar([C)V

    .line 328
    return-void
.end method

.method public setSplitChar([C)V
    .locals 4
    .param p1, "splitChar"    # [C

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    const/4 v3, 0x0

    .line 309
    move-object v0, p1

    .line 310
    .local v0, "fixed":[C
    aget-char v1, p1, v3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 311
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [C

    .line 312
    const/16 v1, 0xa7

    aput-char v1, v0, v3

    .line 313
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    :cond_0
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 317
    new-instance v1, Lcom/tokenautocomplete/CharacterTokenizer;

    invoke-direct {v1, p1}, Lcom/tokenautocomplete/CharacterTokenizer;-><init>([C)V

    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 318
    return-void
.end method

.method public setTokenClickStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;)V
    .locals 0
    .param p1, "cStyle"    # Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .prologue
    .line 253
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 254
    return-void
.end method

.method public setTokenLimit(I)V
    .locals 0
    .param p1, "tokenLimit"    # I

    .prologue
    .line 384
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    iput p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 385
    return-void
.end method

.method public setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    .local p1, "l":Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;, "Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener<TT;>;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    .line 263
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .param p1, "t"    # Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .prologue
    .line 233
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 234
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 235
    return-void
.end method
