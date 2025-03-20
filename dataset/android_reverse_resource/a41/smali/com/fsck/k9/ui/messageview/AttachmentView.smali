.class public Lcom/fsck/k9/ui/messageview/AttachmentView;
.super Landroid/widget/FrameLayout;
.source "AttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

.field private callback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

.field private downloadButton:Landroid/widget/Button;

.field private viewButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private displayAttachmentInformation()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 62
    const v1, 0x7f0c00db

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->viewButton:Landroid/widget/Button;

    .line 63
    const v1, 0x7f0c00da

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->downloadButton:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-wide v2, v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    const-wide/32 v4, 0x8000000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->viewButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->viewButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    const v1, 0x7f0c0087

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, "attachmentName":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v1, v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-wide v2, v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/ui/messageview/AttachmentView;->setAttachmentSize(J)V

    .line 79
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->refreshThumbnail()V

    .line 80
    return-void
.end method

.method private onSaveButtonClick()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->callback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;->onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 122
    return-void
.end method

.method private onSaveButtonLongClick()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->callback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;->onSaveAttachmentToUserProvidedDirectory(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 126
    return-void
.end method

.method private onViewButtonClick()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->callback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;->onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 118
    return-void
.end method

.method private setAttachmentSize(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 83
    const v2, 0x7f0c00d9

    invoke-virtual {p0, v2}, Lcom/fsck/k9/ui/messageview/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, "attachmentSize":Landroid/widget/TextView;
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/fsck/k9/helper/SizeFormatter;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->viewButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    return-void
.end method

.method public enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->viewButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    return-void
.end method

.method public getAttachment()Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->onViewButtonClick()V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->onSaveButtonClick()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f0c00da
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c00da

    if-ne v0, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->onSaveButtonLongClick()V

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshThumbnail()V
    .locals 3

    .prologue
    .line 133
    const v1, 0x7f0c00d8

    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .local v0, "thumbnailView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v2, v2, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 135
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f020002

    .line 136
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 139
    return-void
.end method

.method public setAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 0
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 58
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentView;->displayAttachmentInformation()V

    .line 59
    return-void
.end method

.method public setCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentView;->callback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 130
    return-void
.end method
