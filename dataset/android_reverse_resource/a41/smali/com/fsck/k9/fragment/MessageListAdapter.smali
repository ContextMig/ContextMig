.class public Lcom/fsck/k9/fragment/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# instance fields
.field private fontSizes:Lcom/fsck/k9/FontSizes;

.field private final fragment:Lcom/fsck/k9/fragment/MessageListFragment;

.field private mAnsweredIcon:Landroid/graphics/drawable/Drawable;

.field private mAttachmentIcon:Landroid/graphics/drawable/Drawable;

.field private mForwardedAnsweredIcon:Landroid/graphics/drawable/Drawable;

.field private mForwardedIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 54
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 58
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 59
    invoke-virtual {p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->mAnsweredIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->mForwardedIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->mForwardedAnsweredIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method

.method private buildPreviewSpanColor()I
    .locals 4

    .prologue
    const/16 v3, 0xa0

    const/16 v2, 0x69

    .line 307
    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_0

    .line 308
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 307
    :goto_0
    return v0

    .line 309
    :cond_0
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method private buildSenderSpan()Landroid/text/style/AbsoluteSizeSpan;
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-boolean v1, v1, Lcom/fsck/k9/fragment/MessageListFragment;->senderAboveSubject:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 256
    invoke-virtual {v1}, Lcom/fsck/k9/FontSizes;->getMessageListSubject()I

    move-result v0

    .line 258
    .local v0, "fontSize":I
    :goto_0
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    return-object v1

    .line 256
    .end local v0    # "fontSize":I
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 257
    invoke-virtual {v1}, Lcom/fsck/k9/FontSizes;->getMessageListSender()I

    move-result v0

    goto :goto_0
.end method

.method private buildStatusHolder(ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "forwarded"    # Z
    .param p2, "answered"    # Z

    .prologue
    .line 313
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 314
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->mForwardedAnsweredIcon:Landroid/graphics/drawable/Drawable;

    .line 320
    :goto_0
    return-object v0

    .line 315
    :cond_0
    if-eqz p2, :cond_1

    .line 316
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->mAnsweredIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 317
    :cond_1
    if-eqz p1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->mForwardedIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeBackgroundColorIfActiveMessage(Landroid/database/Cursor;Lcom/fsck/k9/Account;Landroid/view/View;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 291
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "uid":Ljava/lang/String;
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "folderName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v5, v5, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v5}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v4, v4, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    .line 295
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v4, v4, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    .line 296
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    const v2, 0x7f010031

    .line 299
    .local v2, "res":I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 300
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v4}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 301
    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 303
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "res":I
    :cond_0
    return-void
.end method

.method private fetchCounterPartyAddress(Z[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/mail/Address;
    .locals 2
    .param p1, "fromMe"    # Z
    .param p2, "toAddrs"    # [Lcom/fsck/k9/mail/Address;
    .param p3, "ccAddrs"    # [Lcom/fsck/k9/mail/Address;
    .param p4, "fromAddrs"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v1, 0x0

    .line 262
    if-eqz p1, :cond_1

    .line 263
    array-length v0, p2

    if-lez v0, :cond_0

    .line 264
    aget-object v0, p2, v1

    .line 271
    :goto_0
    return-object v0

    .line 265
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_2

    .line 266
    aget-object v0, p3, v1

    goto :goto_0

    .line 268
    :cond_1
    array-length v0, p4

    if-lez v0, :cond_2

    .line 269
    aget-object v0, p4, v1

    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private formatPreviewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7
    .param p1, "preview"    # Landroid/widget/TextView;
    .param p2, "beforePreviewText"    # Ljava/lang/CharSequence;
    .param p3, "sigil"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x21

    .line 240
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 241
    .local v1, "previewText":Landroid/text/Spannable;
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListAdapter;->buildSenderSpan()Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v1, v2, v3, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 244
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListAdapter;->buildPreviewSpanColor()I

    move-result v0

    .line 247
    .local v0, "previewSpanColor":I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 248
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 247
    invoke-interface {v1, v2, v3, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 249
    return-void
.end method

.method private getPreview(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 352
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "previewTypeString":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->fromDatabaseValue(Ljava/lang/String;)Lcom/fsck/k9/mailstore/DatabasePreviewType;

    move-result-object v0

    .line 355
    .local v0, "previewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    sget-object v2, Lcom/fsck/k9/fragment/MessageListAdapter$1;->$SwitchMap$com$fsck$k9$mailstore$DatabasePreviewType:[I

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 368
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown preview type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 358
    :pswitch_0
    const-string v2, ""

    .line 364
    :goto_0
    return-object v2

    .line 361
    :pswitch_1
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    const v3, 0x7f07030a

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 364
    :pswitch_2
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recipientSigil(ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "toMe"    # Z
    .param p2, "ccMe"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    const v1, 0x7f0702c0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    const v1, 0x7f0702bf

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private setBackgroundColor(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z
    .param p3, "read"    # Z

    .prologue
    .line 324
    if-nez p2, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->useBackgroundAsUnreadIndicator()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    :cond_0
    if-eqz p2, :cond_1

    .line 327
    const v1, 0x7f01002c

    .line 334
    .local v1, "res":I
    :goto_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 335
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 336
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "res":I
    :goto_1
    return-void

    .line 328
    :cond_1
    if-eqz p3, :cond_2

    .line 329
    const v1, 0x7f01002d

    .restart local v1    # "res":I
    goto :goto_0

    .line 331
    .end local v1    # "res":I
    :cond_2
    const v1, 0x7f01002e

    .restart local v1    # "res":I
    goto :goto_0

    .line 338
    .end local v1    # "res":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private updateContactBadge(Lcom/fsck/k9/fragment/MessageViewHolder;Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "holder"    # Lcom/fsck/k9/fragment/MessageViewHolder;
    .param p2, "counterpartyAddress"    # Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v1, 0x0

    .line 275
    if-eqz p2, :cond_0

    .line 276
    iget-object v0, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->contactBadge:Lcom/fsck/k9/ui/ContactBadge;

    invoke-static {v0, p2}, Lcom/fsck/k9/helper/Utility;->setContactForBadge(Lcom/fsck/k9/ui/ContactBadge;Lcom/fsck/k9/mail/Address;)V

    .line 282
    iget-object v0, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->contactBadge:Lcom/fsck/k9/ui/ContactBadge;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/fsck/k9/ui/ContactBadge;->setPadding(IIII)V

    .line 283
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->contactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    iget-object v1, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->contactBadge:Lcom/fsck/k9/ui/ContactBadge;

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadContactPicture(Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->contactBadge:Lcom/fsck/k9/ui/ContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/ContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 286
    iget-object v0, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->contactBadge:Lcom/fsck/k9/ui/ContactBadge;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/ContactBadge;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateWithThreadCount(Lcom/fsck/k9/fragment/MessageViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/fsck/k9/fragment/MessageViewHolder;
    .param p2, "threadCount"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 343
    if-le p2, v2, :cond_0

    .line 344
    iget-object v0, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->threadCount:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->threadCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p1, Lcom/fsck/k9/fragment/MessageViewHolder;->threadCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 40
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getAccountFromCursor(Landroid/database/Cursor;)Lcom/fsck/k9/Account;

    move-result-object v6

    .line 145
    .local v6, "account":Lcom/fsck/k9/Account;
    const/16 v36, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 146
    .local v18, "fromList":Ljava/lang/String;
    const/16 v36, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 147
    .local v32, "toList":Ljava/lang/String;
    const/16 v36, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "ccList":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v17

    .line 149
    .local v17, "fromAddrs":[Lcom/fsck/k9/mail/Address;
    invoke-static/range {v32 .. v32}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v31

    .line 150
    .local v31, "toAddrs":[Lcom/fsck/k9/mail/Address;
    invoke-static {v10}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v9

    .line 152
    .local v9, "ccAddrs":[Lcom/fsck/k9/mail/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/fsck/k9/helper/MessageHelper;->toMe(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Address;)Z

    move-result v19

    .line 153
    .local v19, "fromMe":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/fsck/k9/helper/MessageHelper;->toMe(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Address;)Z

    move-result v33

    .line 154
    .local v33, "toMe":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v9}, Lcom/fsck/k9/helper/MessageHelper;->toMe(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Address;)Z

    move-result v11

    .line 156
    .local v11, "ccMe":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Lcom/fsck/k9/helper/MessageHelper;->getDisplayName(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 157
    .local v14, "displayName":Ljava/lang/CharSequence;
    const/16 v36, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    move-object/from16 v0, p2

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v13

    .line 159
    .local v13, "displayDate":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v31

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/fsck/k9/fragment/MessageListAdapter;->fetchCounterPartyAddress(Z[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/mail/Address;

    move-result-object v12

    .line 161
    .local v12, "counterpartyAddress":Lcom/fsck/k9/mail/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    move/from16 v36, v0

    if-eqz v36, :cond_8

    const/16 v36, 0x13

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 163
    .local v30, "threadCount":I
    :goto_0
    const/16 v36, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v37, v0

    const v38, 0x7f07021b

    .line 164
    invoke-virtual/range {v37 .. v38}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 163
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/fragment/MlfUtils;->buildSubject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 166
    .local v29, "subject":Ljava/lang/String;
    const/16 v36, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_9

    const/16 v25, 0x1

    .line 167
    .local v25, "read":Z
    :goto_1
    const/16 v36, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_a

    const/4 v15, 0x1

    .line 168
    .local v15, "flagged":Z
    :goto_2
    const/16 v36, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    const/4 v7, 0x1

    .line 169
    .local v7, "answered":Z
    :goto_3
    const/16 v36, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    const/16 v16, 0x1

    .line 171
    .local v16, "forwarded":Z
    :goto_4
    const/16 v36, 0xc

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-lez v36, :cond_d

    const/16 v20, 0x1

    .line 173
    .local v20, "hasAttachments":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/fsck/k9/fragment/MessageViewHolder;

    .line 175
    .local v21, "holder":Lcom/fsck/k9/fragment/MessageViewHolder;
    if-eqz v25, :cond_e

    const/16 v22, 0x0

    .line 177
    .local v22, "maybeBoldTypeface":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    move/from16 v36, v0

    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 178
    .local v34, "uniqueId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    move-object/from16 v36, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    .line 180
    .local v26, "selected":Z
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->chip:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->checkboxes:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    .line 182
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->selected:Landroid/widget/CheckBox;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->stars:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1

    .line 185
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->flagged:Landroid/widget/CheckBox;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v21

    iput v0, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->position:I

    .line 188
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->contactBadge:Lcom/fsck/k9/ui/ContactBadge;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/fragment/MessageListAdapter;->updateContactBadge(Lcom/fsck/k9/fragment/MessageViewHolder;Lcom/fsck/k9/mail/Address;)V

    .line 191
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/fragment/MessageListAdapter;->setBackgroundColor(Landroid/view/View;ZZ)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/fsck/k9/fragment/MessageListAdapter;->changeBackgroundColorIfActiveMessage(Landroid/database/Cursor;Lcom/fsck/k9/Account;Landroid/view/View;)V

    .line 195
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/fragment/MessageListAdapter;->updateWithThreadCount(Lcom/fsck/k9/fragment/MessageViewHolder;I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->senderAboveSubject:Z

    move/from16 v36, v0

    if-eqz v36, :cond_f

    move-object/from16 v8, v29

    .line 197
    .local v8, "beforePreviewText":Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/fragment/MessageListAdapter;->recipientSigil(ZZ)Ljava/lang/String;

    move-result-object v27

    .line 198
    .local v27, "sigil":Ljava/lang/String;
    new-instance v36, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 200
    .local v23, "messageStringBuilder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->previewLines:I

    move/from16 v36, v0

    if-lez v36, :cond_4

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/fragment/MessageListAdapter;->getPreview(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v24

    .line 202
    .local v24, "preview":Ljava/lang/String;
    const-string v36, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 204
    .end local v24    # "preview":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->preview:Landroid/widget/TextView;

    move-object/from16 v36, v0

    sget-object v37, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 206
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->preview:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v8, v2}, Lcom/fsck/k9/fragment/MessageListAdapter;->formatPreviewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/fragment/MessageListAdapter;->buildStatusHolder(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 210
    .local v28, "statusHolder":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_5

    .line 211
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->senderAboveSubject:Z

    move/from16 v36, v0

    if-eqz v36, :cond_11

    .line 213
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    :goto_8
    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_5
    :goto_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->subject:Landroid/widget/TextView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_7

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->senderAboveSubject:Z

    move/from16 v36, v0

    if-nez v36, :cond_6

    .line 226
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->subject:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    :goto_a
    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->subject:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->subject:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->subject:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    return-void

    .line 161
    .end local v7    # "answered":Z
    .end local v8    # "beforePreviewText":Ljava/lang/CharSequence;
    .end local v15    # "flagged":Z
    .end local v16    # "forwarded":Z
    .end local v20    # "hasAttachments":Z
    .end local v21    # "holder":Lcom/fsck/k9/fragment/MessageViewHolder;
    .end local v22    # "maybeBoldTypeface":I
    .end local v23    # "messageStringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v25    # "read":Z
    .end local v26    # "selected":Z
    .end local v27    # "sigil":Ljava/lang/String;
    .end local v28    # "statusHolder":Landroid/graphics/drawable/Drawable;
    .end local v29    # "subject":Ljava/lang/String;
    .end local v30    # "threadCount":I
    .end local v34    # "uniqueId":J
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 166
    .restart local v29    # "subject":Ljava/lang/String;
    .restart local v30    # "threadCount":I
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 167
    .restart local v25    # "read":Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 168
    .restart local v15    # "flagged":Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 169
    .restart local v7    # "answered":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 171
    .restart local v16    # "forwarded":Z
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 175
    .restart local v20    # "hasAttachments":Z
    .restart local v21    # "holder":Lcom/fsck/k9/fragment/MessageViewHolder;
    :cond_e
    const/16 v22, 0x1

    goto/16 :goto_6

    .restart local v22    # "maybeBoldTypeface":I
    .restart local v26    # "selected":Z
    .restart local v34    # "uniqueId":J
    :cond_f
    move-object v8, v14

    .line 196
    goto/16 :goto_7

    .line 213
    .restart local v8    # "beforePreviewText":Ljava/lang/CharSequence;
    .restart local v23    # "messageStringBuilder":Landroid/text/SpannableStringBuilder;
    .restart local v27    # "sigil":Ljava/lang/String;
    .restart local v28    # "statusHolder":Landroid/graphics/drawable/Drawable;
    :cond_10
    const/16 v36, 0x0

    goto/16 :goto_8

    .line 221
    :cond_11
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    move-object/from16 v36, v0

    new-instance v37, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 226
    :cond_12
    const/16 v36, 0x0

    goto :goto_a
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0c00c6

    const v8, 0x7f0c00c5

    const v7, 0x7f0c007a

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 77
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v3}, Lcom/fsck/k9/fragment/MessageListFragment;->getK9LayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f03002c

    invoke-virtual {v3, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/fsck/k9/fragment/MessageViewHolder;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-direct {v1, v3}, Lcom/fsck/k9/fragment/MessageViewHolder;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    .line 80
    .local v1, "holder":Lcom/fsck/k9/fragment/MessageViewHolder;
    const v3, 0x7f0c00c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->date:Landroid/widget/TextView;

    .line 81
    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->chip:Landroid/view/View;

    .line 84
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget v3, v3, Lcom/fsck/k9/fragment/MessageListFragment;->previewLines:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v3, v3, Lcom/fsck/k9/fragment/MessageListFragment;->contactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v3, 0x7f0c00c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->preview:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0c00cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->flagged:Landroid/widget/CheckBox;

    .line 88
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_0
    const v3, 0x7f0c00c3

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/ContactBadge;

    .line 102
    .local v0, "contactBadge":Lcom/fsck/k9/ui/ContactBadge;
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v3, v3, Lcom/fsck/k9/fragment/MessageListFragment;->contactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    if-eqz v3, :cond_1

    .line 103
    iput-object v0, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->contactBadge:Lcom/fsck/k9/ui/ContactBadge;

    .line 108
    :goto_1
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-boolean v3, v3, Lcom/fsck/k9/fragment/MessageListFragment;->senderAboveSubject:Z

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    .line 110
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v6, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->from:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v7}, Lcom/fsck/k9/FontSizes;->getMessageListSender()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 118
    :goto_2
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v6, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->date:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v7}, Lcom/fsck/k9/FontSizes;->getMessageListDate()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 122
    iget-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->preview:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget v6, v6, Lcom/fsck/k9/fragment/MessageListFragment;->previewLines:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 123
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v6, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->preview:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v7}, Lcom/fsck/k9/FontSizes;->getMessageListPreview()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 124
    const v3, 0x7f0c00ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->threadCount:Landroid/widget/TextView;

    .line 125
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v6, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->threadCount:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v7}, Lcom/fsck/k9/FontSizes;->getMessageListSubject()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 126
    const v3, 0x7f0c00c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-boolean v3, v3, Lcom/fsck/k9/fragment/MessageListFragment;->checkboxes:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->flagged:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-boolean v6, v6, Lcom/fsck/k9/fragment/MessageListFragment;->stars:Z

    if-eqz v6, :cond_4

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 129
    iget-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->flagged:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v3, 0x7f0c00c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->selected:Landroid/widget/CheckBox;

    .line 133
    iget-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->selected:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    return-object v2

    .line 93
    .end local v0    # "contactBadge":Lcom/fsck/k9/ui/ContactBadge;
    :cond_0
    const v3, 0x7f0c00c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->preview:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->flagged:Landroid/widget/CheckBox;

    .line 96
    const v3, 0x7f0c00cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 105
    .restart local v0    # "contactBadge":Lcom/fsck/k9/ui/ContactBadge;
    :cond_1
    invoke-virtual {v0, v5}, Lcom/fsck/k9/ui/ContactBadge;->setVisibility(I)V

    goto/16 :goto_1

    .line 113
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->subject:Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v6, v1, Lcom/fsck/k9/fragment/MessageViewHolder;->subject:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListAdapter;->fontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v7}, Lcom/fsck/k9/FontSizes;->getMessageListSubject()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    goto/16 :goto_2

    :cond_3
    move v3, v5

    .line 126
    goto :goto_3

    :cond_4
    move v4, v5

    .line 128
    goto :goto_4
.end method
