.class public Lcom/fsck/k9/view/MessageHeader;
.super Landroid/widget/LinearLayout;
.source "MessageHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;,
        Lcom/fsck/k9/view/MessageHeader$SavedState;,
        Lcom/fsck/k9/view/MessageHeader$HeaderEntry;
    }
.end annotation


# instance fields
.field private defaultSubjectColor:I

.field private mAccount:Lcom/fsck/k9/Account;

.field private mAdditionalHeadersView:Landroid/widget/TextView;

.field private mAnsweredIcon:Landroid/view/View;

.field private mBccLabel:Landroid/widget/TextView;

.field private mBccView:Landroid/widget/TextView;

.field private mCcLabel:Landroid/widget/TextView;

.field private mCcView:Landroid/widget/TextView;

.field private mChip:Landroid/view/View;

.field private mContactBadge:Lcom/fsck/k9/ui/ContactBadge;

.field private mContacts:Lcom/fsck/k9/helper/Contacts;

.field private mContactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

.field private mContext:Landroid/content/Context;

.field private mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

.field private mDateView:Landroid/widget/TextView;

.field private mFlagged:Landroid/widget/CheckBox;

.field private mFontSizes:Lcom/fsck/k9/FontSizes;

.field private mForwardedIcon:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mMessage:Lcom/fsck/k9/mail/Message;

.field private mMessageHelper:Lcom/fsck/k9/helper/MessageHelper;

.field private mOnLayoutChangedListener:Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;

.field private mSavedState:Lcom/fsck/k9/view/MessageHeader$SavedState;

.field private mSenderView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mToLabel:Landroid/widget/TextView;

.field private mToView:Landroid/widget/TextView;

.field private onCryptoClickListener:Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    .line 98
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mContacts:Lcom/fsck/k9/helper/Contacts;

    .line 100
    return-void
.end method

.method private expand(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "expand"    # Z

    .prologue
    .line 427
    if-eqz p2, :cond_0

    .line 428
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 432
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private getAdditionalHeaders(Lcom/fsck/k9/mail/Message;)Ljava/util/List;
    .locals 9
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/MessageHeader$HeaderEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 440
    .local v0, "additionalHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/MessageHeader$HeaderEntry;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getHeaderNames()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 441
    .local v2, "headerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "headerValues":[Ljava/lang/String;
    array-length v7, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v4, v5

    .line 444
    .local v3, "headerValue":Ljava/lang/String;
    new-instance v8, Lcom/fsck/k9/view/MessageHeader$HeaderEntry;

    invoke-direct {v8, v1, v3}, Lcom/fsck/k9/view/MessageHeader$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "headerName":Ljava/lang/String;
    .end local v3    # "headerValue":Ljava/lang/String;
    .end local v4    # "headerValues":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private hideAdditionalHeaders()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method private layoutChanged()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mOnLayoutChangedListener:Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mOnLayoutChangedListener:Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;->onLayoutChanged()V

    .line 547
    :cond_0
    return-void
.end method

.method private onAddAddressesToClipboard([Lcom/fsck/k9/mail/Address;)V
    .locals 5
    .param p1, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 210
    invoke-static {p1}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "addressList":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/fsck/k9/helper/ClipboardManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/ClipboardManager;

    move-result-object v1

    .line 213
    .local v1, "clipboardManager":Lcom/fsck/k9/helper/ClipboardManager;
    const-string v2, "addresses"

    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    array-length v3, p1

    invoke-virtual {p0, v3}, Lcom/fsck/k9/view/MessageHeader;->createMessage(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 216
    return-void
.end method

.method private onAddRecipientsToClipboard(Lcom/fsck/k9/mail/Message$RecipientType;)V
    .locals 1
    .param p1, "recipientType"    # Lcom/fsck/k9/mail/Message$RecipientType;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->onAddAddressesToClipboard([Lcom/fsck/k9/mail/Address;)V

    .line 220
    return-void
.end method

.method private onAddSenderToContacts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v2, :cond_0

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 198
    .local v1, "senderEmail":Lcom/fsck/k9/mail/Address;
    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mContacts:Lcom/fsck/k9/helper/Contacts;

    invoke-virtual {v2, v1}, Lcom/fsck/k9/helper/Contacts;->createContact(Lcom/fsck/k9/mail/Address;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "senderEmail":Lcom/fsck/k9/mail/Address;
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t create contact"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private populateAdditionalHeadersView(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/MessageHeader$HeaderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "additionalHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/MessageHeader$HeaderEntry;>;"
    const/4 v8, 0x0

    .line 461
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 462
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x1

    .line 463
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/MessageHeader$HeaderEntry;

    .line 464
    .local v0, "additionalHeader":Lcom/fsck/k9/view/MessageHeader$HeaderEntry;
    if-nez v2, :cond_0

    .line 465
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 469
    :goto_1
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 470
    .local v1, "boldSpan":Landroid/text/style/StyleSpan;
    new-instance v3, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/fsck/k9/view/MessageHeader$HeaderEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 471
    .local v3, "label":Landroid/text/SpannableString;
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v3, v1, v8, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 472
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 473
    iget-object v6, v0, Lcom/fsck/k9/view/MessageHeader$HeaderEntry;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 467
    .end local v1    # "boldSpan":Landroid/text/style/StyleSpan;
    .end local v3    # "label":Landroid/text/SpannableString;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 475
    .end local v0    # "additionalHeader":Lcom/fsck/k9/view/MessageHeader$HeaderEntry;
    :cond_1
    iget-object v5, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    return-void
.end method

.method public static shouldShowSender(Lcom/fsck/k9/mail/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 370
    .local v0, "from":[Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getSender()[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 372
    .local v1, "sender":[Lcom/fsck/k9/mail/Address;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showAdditionalHeaders()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 247
    const/4 v2, 0x0

    .line 250
    .local v2, "messageToShow":Ljava/lang/Integer;
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-direct {p0, v4}, Lcom/fsck/k9/view/MessageHeader;->getAdditionalHeaders(Lcom/fsck/k9/mail/Message;)Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "additionalHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/MessageHeader$HeaderEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 253
    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->populateAdditionalHeadersView(Ljava/util/List;)V

    .line 254
    iget-object v4, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "additionalHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/MessageHeader$HeaderEntry;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 264
    iget-object v4, p0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 265
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 266
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 269
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void

    .line 257
    .restart local v0    # "additionalHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/MessageHeader$HeaderEntry;>;"
    :cond_1
    const v4, 0x7f0702a9

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 259
    .end local v0    # "additionalHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/MessageHeader$HeaderEntry;>;"
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const v4, 0x7f070293

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method private updateAddressField(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "label"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 416
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 418
    .local v0, "hasText":Z
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    return-void

    .end local v0    # "hasText":Z
    :cond_0
    move v0, v1

    .line 416
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_1
    move v2, v3

    .line 419
    goto :goto_1

    :cond_2
    move v1, v3

    .line 420
    goto :goto_2
.end method


# virtual methods
.method public additionalHeadersVisible()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    .line 228
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "addressesCount"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideCryptoStatus()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setVisibility(I)V

    .line 380
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 175
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 160
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/view/MessageHeader;->onAddSenderToContacts()V

    goto :goto_0

    :sswitch_1
    move-object v0, p1

    .line 166
    check-cast v0, Landroid/widget/TextView;

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/view/MessageHeader;->expand(Landroid/widget/TextView;Z)V

    .line 167
    invoke-direct {p0}, Lcom/fsck/k9/view/MessageHeader;->layoutChanged()V

    goto :goto_0

    .line 166
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 171
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_2
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->onCryptoClickListener:Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;->onCryptoClick()V

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0097 -> :sswitch_1
        0x7f0c009c -> :sswitch_1
        0x7f0c00a0 -> :sswitch_1
        0x7f0c00b7 -> :sswitch_2
        0x7f0c00e5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 106
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mAnsweredIcon:Landroid/view/View;

    .line 107
    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mForwardedIcon:Landroid/view/View;

    .line 108
    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFromView:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mSenderView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mToView:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mToLabel:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCcView:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCcLabel:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mBccView:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mBccLabel:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0c00c3

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/ContactBadge;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mContactBadge:Lcom/fsck/k9/ui/ContactBadge;

    .line 119
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mChip:Landroid/view/View;

    .line 122
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mDateView:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0c00e7

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFlagged:Landroid/widget/CheckBox;

    .line 125
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/view/MessageHeader;->defaultSubjectColor:I

    .line 126
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewSubject()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 127
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mDateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewDate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 128
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewAdditionalHeaders()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 130
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mFromView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewSender()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 131
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mToView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewTo()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 132
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mToLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewTo()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 133
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mCcView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewCC()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 134
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mCcLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewCC()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 135
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mBccView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewBCC()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 136
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mBccLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/MessageHeader;->mFontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageViewBCC()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 138
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mToView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCcView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mBccView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mToView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCcView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mBccView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/MessageCryptoStatusView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    .line 149
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/helper/MessageHelper;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/MessageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mMessageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 153
    invoke-direct {p0}, Lcom/fsck/k9/view/MessageHeader;->hideAdditionalHeaders()V

    .line 154
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 191
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 181
    :sswitch_0
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->onAddAddressesToClipboard([Lcom/fsck/k9/mail/Address;)V

    goto :goto_0

    .line 184
    :sswitch_1
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->onAddRecipientsToClipboard(Lcom/fsck/k9/mail/Message$RecipientType;)V

    goto :goto_0

    .line 187
    :sswitch_2
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->onAddRecipientsToClipboard(Lcom/fsck/k9/mail/Message$RecipientType;)V

    goto :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0097 -> :sswitch_1
        0x7f0c009c -> :sswitch_2
        0x7f0c00e5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 491
    instance-of v1, p1, Lcom/fsck/k9/view/MessageHeader$SavedState;

    if-nez v1, :cond_0

    .line 492
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 500
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 496
    check-cast v0, Lcom/fsck/k9/view/MessageHeader$SavedState;

    .line 497
    .local v0, "savedState":Lcom/fsck/k9/view/MessageHeader$SavedState;
    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 499
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mSavedState:Lcom/fsck/k9/view/MessageHeader$SavedState;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 480
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 482
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/fsck/k9/view/MessageHeader$SavedState;

    invoke-direct {v0, v1}, Lcom/fsck/k9/view/MessageHeader$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 484
    .local v0, "savedState":Lcom/fsck/k9/view/MessageHeader$SavedState;
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageHeader;->additionalHeadersVisible()Z

    move-result v2

    iput-boolean v2, v0, Lcom/fsck/k9/view/MessageHeader$SavedState;->additionalHeadersVisible:Z

    .line 486
    return-object v0
.end method

.method public onShowAdditionalHeaders()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mAdditionalHeadersView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 402
    .local v0, "currentVisibility":I
    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/fsck/k9/view/MessageHeader;->hideAdditionalHeaders()V

    .line 404
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mToView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/view/MessageHeader;->expand(Landroid/widget/TextView;Z)V

    .line 405
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mCcView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/view/MessageHeader;->expand(Landroid/widget/TextView;Z)V

    .line 411
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/view/MessageHeader;->layoutChanged()V

    .line 412
    return-void

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/view/MessageHeader;->showAdditionalHeaders()V

    .line 408
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mToView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3}, Lcom/fsck/k9/view/MessageHeader;->expand(Landroid/widget/TextView;Z)V

    .line 409
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->mCcView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3}, Lcom/fsck/k9/view/MessageHeader;->expand(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method public populate(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V
    .locals 23
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 272
    invoke-static {}, Lcom/fsck/k9/K9;->showContactName()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fsck/k9/view/MessageHeader;->mContacts:Lcom/fsck/k9/helper/Contacts;

    .line 273
    .local v7, "contacts":Lcom/fsck/k9/helper/Contacts;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 274
    .local v10, "from":Ljava/lang/CharSequence;
    sget-object v18, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 275
    .local v16, "to":Ljava/lang/CharSequence;
    sget-object v18, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 276
    .local v5, "cc":Ljava/lang/CharSequence;
    sget-object v18, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 278
    .local v4, "bcc":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v11

    .line 279
    .local v11, "fromAddrs":[Lcom/fsck/k9/mail/Address;
    sget-object v18, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v17

    .line 280
    .local v17, "toAddrs":[Lcom/fsck/k9/mail/Address;
    sget-object v18, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    .line 281
    .local v6, "ccAddrs":[Lcom/fsck/k9/mail/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mMessageHelper:Lcom/fsck/k9/helper/MessageHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/fsck/k9/helper/MessageHelper;->toMe(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Address;)Z

    move-result v12

    .line 283
    .local v12, "fromMe":Z
    const/4 v8, 0x0

    .line 284
    .local v8, "counterpartyAddress":Lcom/fsck/k9/mail/Address;
    if-eqz v12, :cond_7

    .line 285
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_6

    .line 286
    const/16 v18, 0x0

    aget-object v8, v17, v18

    .line 296
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    :cond_1
    const/4 v13, 0x1

    .line 297
    .local v13, "newMessageShown":Z
    :goto_2
    if-eqz v13, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/view/MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    .line 302
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/view/MessageHeader;->mAccount:Lcom/fsck/k9/Account;

    .line 304
    invoke-static {}, Lcom/fsck/k9/K9;->showContactPicture()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContactBadge:Lcom/fsck/k9/ui/ContactBadge;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/ui/ContactBadge;->setVisibility(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/helper/ContactPicture;->getContactPictureLoader(Landroid/content/Context;)Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/view/MessageHeader;->mContactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    .line 311
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/view/MessageHeader;->shouldShowSender(Lcom/fsck/k9/mail/Message;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSenderView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/view/MessageHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0702b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSender()[Lcom/fsck/k9/mail/Address;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 313
    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 315
    .local v14, "sender":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSenderView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .end local v14    # "sender":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v15

    .line 321
    .local v15, "subject":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f07021b

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x1000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/view/MessageHeader;->defaultSubjectColor:I

    move/from16 v20, v0

    or-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const v19, 0x80015

    .line 328
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "dateTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mDateView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {}, Lcom/fsck/k9/K9;->showContactPicture()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 337
    if-eqz v8, :cond_c

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContactBadge:Lcom/fsck/k9/ui/ContactBadge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/fsck/k9/helper/Utility;->setContactForBadge(Lcom/fsck/k9/ui/ContactBadge;Lcom/fsck/k9/mail/Address;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContactBadge:Lcom/fsck/k9/ui/ContactBadge;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadContactPicture(Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    .line 345
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mFromView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mToView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mToLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/view/MessageHeader;->updateAddressField(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mCcView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mCcLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/fsck/k9/view/MessageHeader;->updateAddressField(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mBccView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mBccLabel:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v4, v2}, Lcom/fsck/k9/view/MessageHeader;->updateAddressField(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mAnsweredIcon:Landroid/view/View;

    move-object/from16 v19, v0

    sget-object v18, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x0

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mForwardedIcon:Landroid/view/View;

    move-object/from16 v19, v0

    sget-object v18, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mFlagged:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    sget-object v19, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mChip:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundColor(I)V

    .line 356
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageHeader;->setVisibility(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSavedState:Lcom/fsck/k9/view/MessageHeader$SavedState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSavedState:Lcom/fsck/k9/view/MessageHeader$SavedState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/fsck/k9/view/MessageHeader$SavedState;->additionalHeadersVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/view/MessageHeader;->showAdditionalHeaders()V

    .line 362
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/view/MessageHeader;->mSavedState:Lcom/fsck/k9/view/MessageHeader$SavedState;

    .line 366
    :goto_9
    return-void

    .line 272
    .end local v4    # "bcc":Ljava/lang/CharSequence;
    .end local v5    # "cc":Ljava/lang/CharSequence;
    .end local v6    # "ccAddrs":[Lcom/fsck/k9/mail/Address;
    .end local v7    # "contacts":Lcom/fsck/k9/helper/Contacts;
    .end local v8    # "counterpartyAddress":Lcom/fsck/k9/mail/Address;
    .end local v9    # "dateTime":Ljava/lang/String;
    .end local v10    # "from":Ljava/lang/CharSequence;
    .end local v11    # "fromAddrs":[Lcom/fsck/k9/mail/Address;
    .end local v12    # "fromMe":Z
    .end local v13    # "newMessageShown":Z
    .end local v15    # "subject":Ljava/lang/String;
    .end local v16    # "to":Ljava/lang/CharSequence;
    .end local v17    # "toAddrs":[Lcom/fsck/k9/mail/Address;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 287
    .restart local v4    # "bcc":Ljava/lang/CharSequence;
    .restart local v5    # "cc":Ljava/lang/CharSequence;
    .restart local v6    # "ccAddrs":[Lcom/fsck/k9/mail/Address;
    .restart local v7    # "contacts":Lcom/fsck/k9/helper/Contacts;
    .restart local v8    # "counterpartyAddress":Lcom/fsck/k9/mail/Address;
    .restart local v10    # "from":Ljava/lang/CharSequence;
    .restart local v11    # "fromAddrs":[Lcom/fsck/k9/mail/Address;
    .restart local v12    # "fromMe":Z
    .restart local v16    # "to":Ljava/lang/CharSequence;
    .restart local v17    # "toAddrs":[Lcom/fsck/k9/mail/Address;
    :cond_6
    array-length v0, v6

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 288
    const/16 v18, 0x0

    aget-object v8, v6, v18

    goto/16 :goto_1

    .line 290
    :cond_7
    array-length v0, v11

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 291
    const/16 v18, 0x0

    aget-object v8, v11, v18

    goto/16 :goto_1

    .line 296
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 308
    .restart local v13    # "newMessageShown":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContactBadge:Lcom/fsck/k9/ui/ContactBadge;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/ui/ContactBadge;->setVisibility(I)V

    goto/16 :goto_3

    .line 317
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSenderView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 324
    .restart local v15    # "subject":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 341
    .restart local v9    # "dateTime":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->mContactBadge:Lcom/fsck/k9/ui/ContactBadge;

    move-object/from16 v18, v0

    const v19, 0x7f020069

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/ui/ContactBadge;->setImageResource(I)V

    goto/16 :goto_6

    .line 350
    :cond_d
    const/16 v18, 0x8

    goto/16 :goto_7

    .line 351
    :cond_e
    const/16 v18, 0x8

    goto/16 :goto_8

    .line 364
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/view/MessageHeader;->hideAdditionalHeaders()V

    goto :goto_9
.end method

.method public setCryptoStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V
    .locals 2
    .param p1, "displayStatus"    # Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 398
    return-void
.end method

.method public setCryptoStatusDisabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    sget-object v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 392
    return-void
.end method

.method public setCryptoStatusLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mCryptoStatusIcon:Lcom/fsck/k9/view/MessageCryptoStatusView;

    sget-object v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->LOADING:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageCryptoStatusView;->setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 386
    return-void
.end method

.method public setOnCryptoClickListener(Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;)V
    .locals 0
    .param p1, "onCryptoClickListener"    # Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->onCryptoClickListener:Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;

    .line 555
    return-void
.end method

.method public setOnFlagListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mFlagged:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method public setOnLayoutChangedListener(Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->mOnLayoutChangedListener:Lcom/fsck/k9/view/MessageHeader$OnLayoutChangedListener;

    .line 541
    return-void
.end method

.method public showSubjectLine()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    return-void
.end method
