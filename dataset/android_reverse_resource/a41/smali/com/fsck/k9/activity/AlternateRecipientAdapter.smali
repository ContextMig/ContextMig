.class public Lcom/fsck/k9/activity/AlternateRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlternateRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;,
        Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_FIXED_LIST_ITEMS:I = 0x2

.field private static final POSITION_CURRENT_ADDRESS:I = 0x1

.field private static final POSITION_HEADER_VIEW:I


# instance fields
.field private final context:Landroid/content/Context;

.field private currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

.field private final listener:Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;

.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;"
        }
    .end annotation
.end field

.field private showAdvancedInfo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->listener:Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->listener:Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;

    return-object v0
.end method

.method private bindCryptoSimple(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 3
    .param p1, "holder"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    .param p2, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    const/16 v2, 0x8

    .line 215
    iget-object v0, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatus:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    sget-object v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$3;->$SwitchMap$com$fsck$k9$view$RecipientSelectView$RecipientCryptoStatus:[I

    invoke-virtual {p2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getCryptoStatus()Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatusSimple:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatusSimple:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private configureCryptoStatusView(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 1
    .param p1, "holder"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    .param p2, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->showAdvancedInfo:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->configureCryptoStatusViewAdvanced(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->bindCryptoSimple(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    goto :goto_0
.end method

.method private configureCryptoStatusViewAdvanced(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 2
    .param p1, "holder"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    .param p2, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 179
    sget-object v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$3;->$SwitchMap$com$fsck$k9$view$RecipientSelectView$RecipientCryptoStatus:[I

    invoke-virtual {p2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getCryptoStatus()Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 181
    :pswitch_0
    const v0, 0x7f020093

    const v1, 0x7f010040

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->setCryptoStatusView(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;II)V

    goto :goto_0

    .line 185
    :pswitch_1
    const v0, 0x7f020092

    const v1, 0x7f01003e

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->setCryptoStatusView(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;II)V

    goto :goto_0

    .line 189
    :pswitch_2
    const v0, 0x7f020091

    const v1, 0x7f01003f

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->setCryptoStatusView(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;II)V

    goto :goto_0

    .line 193
    :pswitch_3
    iget-object v0, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatus:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRecipientFromPosition(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    return-object v0
.end method

.method private setCryptoStatusView(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;II)V
    .locals 5
    .param p1, "holder"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    .param p2, "cryptoStatusRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "cryptoStatusColorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 201
    iget-object v3, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 203
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 205
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v3, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v0

    .line 208
    .local v0, "cryptoStatusColor":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 210
    iget-object v3, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v3, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatus:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void
.end method


# virtual methods
.method public bindHeaderView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;

    .line 122
    .local v0, "holder":Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->setShowAsHeader(Z)V

    .line 124
    iget-object v1, v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getNameOrUnknown(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerAddressLabel:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerAddressLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerPhoto:Lcom/fsck/k9/ui/ContactBadge;

    invoke-static {v1, v2, p2}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setContactPhotoOrPlaceholder(Landroid/content/Context;Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 133
    iget-object v1, v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerPhoto:Lcom/fsck/k9/ui/ContactBadge;

    invoke-virtual {p2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getContactLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/ui/ContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 135
    iget-object v1, v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerRemove:Landroid/view/View;

    new-instance v2, Lcom/fsck/k9/activity/AlternateRecipientAdapter$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$1;-><init>(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void

    .line 129
    :cond_0
    iget-object v1, v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerAddressLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindItemView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;

    .line 145
    .local v1, "holder":Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    invoke-virtual {v1, v4}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->setShowAsHeader(Z)V

    .line 147
    iget-object v5, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "address":Ljava/lang/String;
    iget-object v5, v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddress:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v5, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    iget-object v5, v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddressLabel:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v5, v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddressLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    if-ne v5, p2, :cond_1

    move v2, v3

    .line 157
    .local v2, "isCurrent":Z
    :goto_1
    iget-object v6, v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddress:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v6, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 158
    iget-object v5, v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddressLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v5, v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 160
    iget-object v3, v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutItem:Landroid/view/View;

    new-instance v4, Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;

    invoke-direct {v4, p0, p2}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;-><init>(Lcom/fsck/k9/activity/AlternateRecipientAdapter;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->configureCryptoStatusView(Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 168
    return-void

    .line 153
    .end local v2    # "isCurrent":Z
    :cond_0
    iget-object v5, v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddressLabel:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 156
    goto :goto_1

    .restart local v2    # "isCurrent":Z
    :cond_2
    move v5, v4

    .line 157
    goto :goto_2

    :cond_3
    move v3, v4

    .line 158
    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x2

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 77
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->getRecipientFromPosition(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->getItem(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-virtual {p0, p3}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->getItem(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v0

    .line 97
    .local v0, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    if-nez p1, :cond_1

    .line 98
    invoke-virtual {p0, p2, v0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->bindHeaderView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 103
    :goto_0
    return-object p2

    .line 100
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->bindItemView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;-><init>(Landroid/view/View;)V

    .line 110
    .local v0, "holder":Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    return-object v1
.end method

.method public setAlternateRecipientInfo(Ljava/util/List;)V
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
    .line 53
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iput-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    .line 54
    iget-object v1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 55
    .local v0, "indexOfCurrentRecipient":I
    if-ltz v0, :cond_0

    .line 56
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    iput-object v1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public setCurrentRecipient(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 0
    .param p1, "currentRecipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 50
    return-void
.end method

.method public setShowAdvancedInfo(Z)V
    .locals 0
    .param p1, "showAdvancedInfo"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->showAdvancedInfo:Z

    .line 232
    return-void
.end method
