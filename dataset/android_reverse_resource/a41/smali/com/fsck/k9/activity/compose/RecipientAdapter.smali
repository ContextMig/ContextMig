.class public Lcom/fsck/k9/activity/compose/RecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecipientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private highlight:Ljava/lang/String;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/compose/RecipientAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    return-object v0
.end method

.method private bindCryptoAdvanced(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;)V
    .locals 7
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .param p2, "holder"    # Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;

    .prologue
    const/16 v6, 0x8

    .line 105
    iget-object v4, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatusSimple:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    const/4 v2, 0x0

    .local v2, "cryptoStatusRes":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 108
    .local v1, "cryptoStatusColor":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getCryptoStatus()Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v0

    .line 109
    .local v0, "cryptoStatus":Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
    sget-object v4, Lcom/fsck/k9/activity/compose/RecipientAdapter$2;->$SwitchMap$com$fsck$k9$view$RecipientSelectView$RecipientCryptoStatus:[I

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 127
    :goto_0
    if-eqz v2, :cond_0

    .line 128
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 129
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 131
    iget-object v4, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v4, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatus:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-void

    .line 111
    :pswitch_0
    const v4, 0x7f020093

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    const v5, 0x7f010040

    invoke-static {v4, v5}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 113
    goto :goto_0

    .line 116
    :pswitch_1
    const v4, 0x7f020092

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 117
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    const v5, 0x7f01003e

    invoke-static {v4, v5}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 118
    goto :goto_0

    .line 121
    :pswitch_2
    const v4, 0x7f020091

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 122
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    const v5, 0x7f01003f

    invoke-static {v4, v5}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v4, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatus:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindCryptoSimple(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;)V
    .locals 4
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .param p2, "holder"    # Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;

    .prologue
    const/16 v3, 0x8

    .line 139
    iget-object v1, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatus:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getCryptoStatus()Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v0

    .line 142
    .local v0, "cryptoStatus":Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientAdapter$2;->$SwitchMap$com$fsck$k9$view$RecipientSelectView$RecipientCryptoStatus:[I

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v1, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatusSimple:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v1, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatusSimple:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;

    .line 90
    .local v1, "holder":Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;
    iget-object v2, v1, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getDisplayNameOrUnknown(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlightText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "address":Ljava/lang/String;
    iget-object v2, v1, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->email:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlightText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    iget-object v3, v1, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->photo:Landroid/widget/ImageView;

    invoke-static {v2, v3, p2}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setContactPhotoOrPlaceholder(Landroid/content/Context;Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 97
    iget-boolean v2, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->showAdvancedInfo:Z

    if-eqz v2, :cond_0

    .line 98
    invoke-direct {p0, p2, v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->bindCryptoAdvanced(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->bindCryptoSimple(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;)V

    goto :goto_0
.end method

.method private highlightText(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 209
    .local v0, "highlightedSpannable":Landroid/text/Spannable;
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlight:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 221
    :cond_0
    return-object v0

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlight:Ljava/lang/String;

    const/16 v4, 0x12

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 214
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 215
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    .line 217
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 218
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x21

    .line 216
    invoke-interface {v0, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;-><init>(Landroid/view/View;)V

    .line 82
    .local v0, "holder":Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-object v1
.end method

.method public static setContactPhotoOrPlaceholder(Landroid/content/Context;Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/fsck/k9/helper/ContactPicture;->getContactPictureLoader(Landroid/content/Context;)Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadContactPicture(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/widget/ImageView;)V

    .line 157
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientAdapter$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/compose/RecipientAdapter$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientAdapter;)V

    return-object v0
.end method

.method public getItem(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->getItem(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    if-nez p2, :cond_0

    .line 69
    invoke-direct {p0, p3}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->getItem(I)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v0

    .line 73
    .local v0, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    invoke-direct {p0, p2, v0}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->bindView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 75
    return-object p2
.end method

.method public setHighlight(Ljava/lang/String;)V
    .locals 0
    .param p1, "highlight"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlight:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRecipients(Ljava/util/List;)V
    .locals 0
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
    .line 43
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public setShowAdvancedInfo(Z)V
    .locals 0
    .param p1, "showAdvancedInfo"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->showAdvancedInfo:Z

    .line 184
    return-void
.end method
