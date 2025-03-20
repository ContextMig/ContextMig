.class public Lcom/fsck/k9/view/RecipientSelectView;
.super Lcom/tokenautocomplete/TokenCompleteTextView;
.source "RecipientSelectView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/RecipientSelectView$Recipient;,
        Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;,
        Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;,
        Lcom/fsck/k9/view/RecipientSelectView$TokenListener;,
        Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tokenautocomplete/TokenCompleteTextView",
        "<",
        "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
        ">;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
        ">;>;",
        "Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;"
    }
.end annotation


# static fields
.field private static final ARG_QUERY:Ljava/lang/String; = "query"

.field private static final LOADER_ID_ALTERNATES:I = 0x1

.field private static final LOADER_ID_FILTERING:I = 0x0

.field private static final MINIMUM_LENGTH_FOR_FILTERING:I = 0x2


# instance fields
.field private adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

.field private alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

.field private alternatesPopup:Landroid/widget/ListPopupWindow;

.field private alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

.field private cryptoProvider:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private listener:Lcom/fsck/k9/view/RecipientSelectView$TokenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fsck/k9/view/RecipientSelectView$TokenListener",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;"
        }
    .end annotation
.end field

.field private loaderManager:Landroid/app/LoaderManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private showAdvancedInfo:Z

.field private showCryptoEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->initView(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->initView(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->initView(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method private bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V
    .locals 8
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;

    .line 128
    .local v1, "holder":Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;
    iget-object v6, v1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getDisplayNameOrAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->vContactPhoto:Landroid/widget/ImageView;

    invoke-static {v6, v7, p1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setContactPhotoOrPlaceholder(Landroid/content/Context;Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 132
    iget-object v6, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    if-eqz v6, :cond_0

    move v0, v5

    .line 133
    .local v0, "hasCryptoProvider":Z
    :goto_0
    if-nez v0, :cond_1

    .line 134
    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->hideCryptoState()V

    .line 146
    :goto_1
    return-void

    .end local v0    # "hasCryptoProvider":Z
    :cond_0
    move v0, v4

    .line 132
    goto :goto_0

    .line 138
    .restart local v0    # "hasCryptoProvider":Z
    :cond_1
    invoke-static {p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->access$000(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v6

    sget-object v7, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->AVAILABLE_TRUSTED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    if-eq v6, v7, :cond_2

    .line 139
    invoke-static {p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->access$000(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v6

    sget-object v7, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->AVAILABLE_UNTRUSTED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    if-ne v6, v7, :cond_3

    :cond_2
    move v2, v5

    .line 140
    .local v2, "isAvailable":Z
    :goto_2
    iget-boolean v6, p0, Lcom/fsck/k9/view/RecipientSelectView;->showAdvancedInfo:Z

    if-nez v6, :cond_4

    .line 141
    iget-boolean v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->showCryptoEnabled:Z

    invoke-virtual {v1, v2, v4}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->showSimpleCryptoState(ZZ)V

    goto :goto_1

    .end local v2    # "isAvailable":Z
    :cond_3
    move v2, v4

    .line 139
    goto :goto_2

    .line 143
    .restart local v2    # "isAvailable":Z
    :cond_4
    invoke-static {p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->access$000(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v6

    sget-object v7, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->AVAILABLE_TRUSTED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    if-ne v6, v7, :cond_5

    move v3, v5

    .line 144
    .local v3, "isVerified":Z
    :goto_3
    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->showAdvancedCryptoState(ZZ)V

    goto :goto_1

    .end local v3    # "isVerified":Z
    :cond_5
    move v3, v4

    .line 143
    goto :goto_3
.end method

.method private displayKeyboard()V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private getTokenCount()I
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getTokenViewForRecipient(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Landroid/view/View;
    .locals 7
    .param p1, "currentRecipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 477
    .local v2, "text":Landroid/text/Editable;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 488
    :goto_0
    return-object v3

    .line 481
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    invoke-interface {v2, v3, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 482
    .local v1, "recipientSpans":[Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
    array-length v6, v1

    move v5, v3

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 483
    .local v0, "recipientSpan":Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->getToken()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    invoke-static {v0}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->access$100(Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 482
    :cond_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .end local v0    # "recipientSpan":Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
    :cond_2
    move-object v3, v4

    .line 488
    goto :goto_0
.end method

.method private inflateLayout()Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03003b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 90
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 91
    new-instance v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;)V

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .line 92
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/RecipientSelectView;->allowDuplicates(Z)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/RecipientSelectView;->performBestGuess(Z)V

    .line 101
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-direct {v0, p1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 102
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/RecipientSelectView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/RecipientSelectView;->setLongClickable(Z)V

    .line 105
    return-void
.end method

.method private static isPlaceholderText(Ljava/lang/String;)Z
    .locals 3
    .param p0, "currentCompletionText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 416
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private redrawAllTokens()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 271
    .local v2, "text":Landroid/text/Editable;
    if-nez v2, :cond_0

    .line 281
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 276
    .local v1, "recipientSpans":[Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 277
    .local v0, "recipientSpan":Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->getToken()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-static {v0}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->access$100(Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/fsck/k9/view/RecipientSelectView;->bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V

    .line 276
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 280
    .end local v0    # "recipientSpan":Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->invalidate()V

    goto :goto_0
.end method

.method private showAlternates(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 4
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    if-nez v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 305
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 307
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 308
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method public varargs addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 3
    .param p1, "recipients"    # [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 284
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 285
    .local v0, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/RecipientSelectView;->addObject(Ljava/lang/Object;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :cond_0
    return-void
.end method

.method protected buildSpanForObject(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .locals 3
    .param p1, "obj"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ")",
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">.TokenImageSpan;"
        }
    .end annotation

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 464
    const/4 v1, 0x0

    .line 468
    :goto_0
    return-object v1

    .line 467
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->getViewForObject(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Landroid/view/View;

    move-result-object v0

    .line 468
    .local v0, "tokenView":Landroid/view/View;
    new-instance v1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->maxTextWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;-><init>(Lcom/fsck/k9/view/RecipientSelectView;Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;I)V

    goto :goto_0
.end method

.method protected bridge synthetic buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->buildSpanForObject(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    move-result-object v0

    return-object v0
.end method

.method protected defaultObject(Ljava/lang/String;)Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .locals 4
    .param p1, "completionText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 170
    invoke-static {p1}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 171
    .local v0, "parsedAddresses":[Lcom/fsck/k9/mail/Address;
    invoke-static {p1}, Lorg/apache/james/mime4j/util/CharsetUtil;->isASCII(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070322

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/RecipientSelectView;->setError(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    return-object v1

    .line 175
    :cond_0
    array-length v2, v0

    if-eqz v2, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070323

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/RecipientSelectView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_2
    new-instance v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Lcom/fsck/k9/mail/Address;)V

    goto :goto_0
.end method

.method protected bridge synthetic defaultObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->defaultObject(Ljava/lang/String;)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v0

    return-object v0
.end method

.method public getAddresses()[Lcom/fsck/k9/mail/Address;
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getObjects()Ljava/util/List;

    move-result-object v2

    .line 291
    .local v2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Lcom/fsck/k9/mail/Address;

    .line 292
    .local v0, "address":[Lcom/fsck/k9/mail/Address;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 293
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    iget-object v3, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    aput-object v3, v0, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-object v0
.end method

.method protected getViewForObject(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Landroid/view/View;
    .locals 2
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView;->inflateLayout()Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;

    invoke-direct {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    .local v0, "holder":Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/view/RecipientSelectView;->bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V

    .line 116
    return-object v1
.end method

.method protected bridge synthetic getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->getViewForObject(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasUncompletedText()Z
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->currentCompletionText()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "currentCompletionText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/fsck/k9/view/RecipientSelectView;->isPlaceholderText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 364
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Loader ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :pswitch_0
    if-eqz p2, :cond_0

    const-string v2, "query"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "query"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "query":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-virtual {v2, v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setHighlight(Ljava/lang/String;)V

    .line 352
    new-instance v2, Lcom/fsck/k9/activity/compose/RecipientLoader;

    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v1    # "query":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 350
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {v2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getContactLookupUri()Landroid/net/Uri;

    move-result-object v0

    .line 356
    .local v0, "contactLookupUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 357
    new-instance v2, Lcom/fsck/k9/activity/compose/RecipientLoader;

    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 359
    :cond_1
    new-instance v2, Lcom/fsck/k9/activity/compose/RecipientLoader;

    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    new-array v5, v5, [Lcom/fsck/k9/mail/Address;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    iget-object v7, v7, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;)V

    goto :goto_1

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->onDetachedFromWindow()V

    .line 194
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 196
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    .line 199
    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previous"    # Landroid/graphics/Rect;

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/tokenautocomplete/TokenCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView;->displayKeyboard()V

    .line 207
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 343
    invoke-super {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/view/RecipientSelectView;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-virtual {v0, p2}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setRecipients(Ljava/util/List;)V

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/fsck/k9/view/RecipientSelectView;->postShowAlternatesPopup(Ljava/util/List;)V

    .line 380
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;>;"
    const/4 v1, 0x0

    .line 388
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setHighlight(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setRecipients(Ljava/util/List;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onRecipientChange(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 6
    .param p1, "recipientToReplace"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .param p2, "alternateAddress"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    const/4 v5, 0x0

    .line 427
    iget-object v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 429
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getObjects()Ljava/util/List;

    move-result-object v1

    .line 430
    .local v1, "currentRecipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 431
    .local v2, "indexOfRecipient":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 432
    const-string v4, "Tried to refresh invalid view token!"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 437
    .local v0, "currentRecipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    iget-object v4, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    iput-object v4, v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 438
    iget-object v4, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    iput-object v4, v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 439
    invoke-static {p2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->access$000(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->access$002(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;)Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    .line 441
    invoke-direct {p0, v0}, Lcom/fsck/k9/view/RecipientSelectView;->getTokenViewForRecipient(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Landroid/view/View;

    move-result-object v3

    .line 442
    .local v3, "recipientTokenView":Landroid/view/View;
    if-nez v3, :cond_1

    .line 443
    const-string v4, "Tried to refresh invalid view token!"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/fsck/k9/view/RecipientSelectView;->bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V

    .line 449
    iget-object v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->listener:Lcom/fsck/k9/view/RecipientSelectView$TokenListener;

    if-eqz v4, :cond_2

    .line 450
    iget-object v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->listener:Lcom/fsck/k9/view/RecipientSelectView$TokenListener;

    invoke-interface {v4, v0}, Lcom/fsck/k9/view/RecipientSelectView$TokenListener;->onTokenChanged(Ljava/lang/Object;)V

    .line 453
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->invalidate()V

    goto :goto_0
.end method

.method public onRecipientRemove(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 1
    .param p1, "currentRecipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 422
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->removeObject(Ljava/lang/Object;)V

    .line 423
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 151
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 153
    .local v3, "text":Landroid/text/Editable;
    if-eqz v3, :cond_0

    if-ne v0, v5, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v4, v6}, Lcom/fsck/k9/view/RecipientSelectView;->getOffsetForPosition(FF)I

    move-result v2

    .line 156
    .local v2, "offset":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 157
    const-class v4, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    invoke-interface {v3, v2, v2, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 158
    .local v1, "links":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>.TokenImageSpan;"
    array-length v4, v1

    if-lez v4, :cond_0

    .line 159
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-direct {p0, v4}, Lcom/fsck/k9/view/RecipientSelectView;->showAlternates(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    move v4, v5

    .line 165
    .end local v1    # "links":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>.TokenImageSpan;"
    .end local v2    # "offset":I
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public performCompletion()V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getListSelection()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->currentCompletionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->defaultObject(Ljava/lang/String;)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v0

    .line 231
    .local v0, "recipientText":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/RecipientSelectView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->replaceText(Ljava/lang/CharSequence;)V

    .line 237
    .end local v0    # "recipientText":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-super {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keyCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    if-nez v2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 251
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v2, v4, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public postShowAlternatesPopup(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fsck/k9/view/RecipientSelectView$1;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/view/RecipientSelectView$1;-><init>(Lcom/fsck/k9/view/RecipientSelectView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method public setCryptoProvider(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cryptoProvider"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "showAdvancedInfo"    # Z

    .prologue
    .line 257
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    .line 258
    iput-boolean p2, p0, Lcom/fsck/k9/view/RecipientSelectView;->showAdvancedInfo:Z

    .line 259
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-virtual {v0, p2}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setShowAdvancedInfo(Z)V

    .line 260
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-virtual {v0, p2}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->setShowAdvancedInfo(Z)V

    .line 261
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    .line 189
    return-void
.end method

.method public setShowCryptoEnabled(Z)V
    .locals 0
    .param p1, "showCryptoEnabled"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->showCryptoEnabled:Z

    .line 266
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView;->redrawAllTokens()V

    .line 267
    return-void
.end method

.method public setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/view/RecipientSelectView$TokenListener",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "listener":Lcom/fsck/k9/view/RecipientSelectView$TokenListener;, "Lcom/fsck/k9/view/RecipientSelectView$TokenListener<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    invoke-super {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V

    .line 497
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->listener:Lcom/fsck/k9/view/RecipientSelectView$TokenListener;

    .line 498
    return-void
.end method

.method public showAlternatesPopup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroid/app/LoaderManager;

    if-nez v2, :cond_0

    .line 338
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getDropDownAnchor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, "anchorView":Landroid/view/View;
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 329
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getDropDownWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 331
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    iget-object v3, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->setCurrentRecipient(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 332
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->setAlternateRecipientInfo(Ljava/util/List;)V

    .line 335
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    .line 336
    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 337
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public showDropDown()V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 220
    .local v0, "cursorIsValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 225
    :goto_1
    return-void

    .line 219
    .end local v0    # "cursorIsValid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    .restart local v0    # "cursorIsValid":Z
    :cond_1
    invoke-super {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->showDropDown()V

    goto :goto_1
.end method

.method public tryPerformCompletion()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    move-result v3

    if-nez v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v2

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getTokenCount()I

    move-result v1

    .line 399
    .local v1, "previousNumRecipients":I
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->performCompletion()V

    .line 400
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getTokenCount()I

    move-result v0

    .line 402
    .local v0, "numRecipients":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
