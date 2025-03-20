.class public Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;
.super Ljava/lang/Object;
.source "QuotedMessageMvpView.java"


# instance fields
.field private final mMessageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

.field private final mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

.field private final mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

.field private final mQuotedTextBar:Landroid/view/View;

.field private final mQuotedTextDelete:Landroid/widget/ImageButton;

.field private final mQuotedTextEdit:Landroid/widget/ImageButton;

.field private final mQuotedTextShow:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 3
    .param p1, "messageCompose"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, 0x7f0c007e

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextShow:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0c007f

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextBar:Landroid/view/View;

    .line 36
    const v0, 0x7f0c0083

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextEdit:Landroid/widget/ImageButton;

    .line 37
    const v0, 0x7f0c0084

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextDelete:Landroid/widget/ImageButton;

    .line 38
    const v0, 0x7f0c0080

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/EolConvertingEditText;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 39
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/EolConvertingEditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const v0, 0x7f0c0081

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/MessageWebView;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    .line 42
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageWebView;->configure()V

    .line 45
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    new-instance v1, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$1;-><init>(Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52
    const v0, 0x7f0c007c

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/EolConvertingEditText;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mMessageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 53
    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "draftNeedsChangingTextWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/EolConvertingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    return-void
.end method

.method public getQuotedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/EolConvertingEditText;->getCharacters()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFontSizes(Lcom/fsck/k9/FontSizes;I)V
    .locals 1
    .param p1, "mFontSizes"    # Lcom/fsck/k9/FontSizes;
    .param p2, "fontSize"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {p1, v0, p2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 120
    return-void
.end method

.method public setMessageContentCharacters(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mMessageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/EolConvertingEditText;->setCharacters(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public setMessageContentCursorPosition(I)V
    .locals 1
    .param p1, "messageContentCursorPosition"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mMessageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/EolConvertingEditText;->setSelection(I)V

    .line 143
    return-void
.end method

.method public setOnClickPresenter(Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .prologue
    .line 56
    new-instance v0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;-><init>(Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;)V

    .line 73
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextShow:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextEdit:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public setQuotedHtml(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;)V
    .locals 3
    .param p1, "quotedContent"    # Ljava/lang/String;
    .param p2, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    .line 124
    invoke-static {p1}, Lcom/fsck/k9/message/html/HtmlConverter;->wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v1, p2, v2}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 126
    return-void
.end method

.method public setQuotedText(Ljava/lang/String;)V
    .locals 1
    .param p1, "quotedText"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/EolConvertingEditText;->setCharacters(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;Lcom/fsck/k9/message/SimpleMessageFormat;)V
    .locals 4
    .param p1, "mode"    # Lcom/fsck/k9/message/QuotedTextMode;
    .param p2, "quotedTextFormat"    # Lcom/fsck/k9/message/SimpleMessageFormat;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 83
    sget-object v0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$3;->$SwitchMap$com$fsck$k9$message$QuotedTextMode:[I

    invoke-virtual {p1}, Lcom/fsck/k9/message/QuotedTextMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextShow:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/view/MessageWebView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextEdit:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextShow:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/view/MessageWebView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextEdit:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextShow:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne p2, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0, v3}, Lcom/fsck/k9/view/MessageWebView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextEdit:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedText:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v0, v3}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedHTML:Lcom/fsck/k9/view/MessageWebView;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/view/MessageWebView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->mQuotedTextEdit:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
