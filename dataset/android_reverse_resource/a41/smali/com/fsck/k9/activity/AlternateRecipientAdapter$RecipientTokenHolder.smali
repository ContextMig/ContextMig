.class Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
.super Ljava/lang/Object;
.source "AlternateRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/AlternateRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientTokenHolder"
.end annotation


# instance fields
.field public final headerAddressLabel:Landroid/widget/TextView;

.field public final headerName:Landroid/widget/TextView;

.field public final headerPhoto:Lcom/fsck/k9/ui/ContactBadge;

.field public final headerRemove:Landroid/view/View;

.field public final itemAddress:Landroid/widget/TextView;

.field public final itemAddressLabel:Landroid/widget/TextView;

.field public final itemCryptoStatus:Landroid/view/View;

.field public final itemCryptoStatusIcon:Landroid/widget/ImageView;

.field public final itemCryptoStatusSimple:Landroid/widget/ImageView;

.field public final layoutHeader:Landroid/view/View;

.field public final layoutItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const v0, 0x7f0c00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutHeader:Landroid/view/View;

    .line 249
    const v0, 0x7f0c00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutItem:Landroid/view/View;

    .line 251
    const v0, 0x7f0c00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerName:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0c00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerAddressLabel:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0c00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/ContactBadge;

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerPhoto:Lcom/fsck/k9/ui/ContactBadge;

    .line 254
    const v0, 0x7f0c00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerRemove:Landroid/view/View;

    .line 256
    const v0, 0x7f0c00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddress:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0c00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddressLabel:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f0c00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatus:Landroid/view/View;

    .line 259
    const v0, 0x7f0c00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatusIcon:Landroid/widget/ImageView;

    .line 261
    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatusSimple:Landroid/widget/ImageView;

    .line 262
    return-void
.end method


# virtual methods
.method public setShowAsHeader(Z)V
    .locals 4
    .param p1, "isHeader"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 265
    iget-object v3, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutItem:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    return-void

    :cond_0
    move v0, v2

    .line 265
    goto :goto_0

    :cond_1
    move v2, v1

    .line 266
    goto :goto_1
.end method
