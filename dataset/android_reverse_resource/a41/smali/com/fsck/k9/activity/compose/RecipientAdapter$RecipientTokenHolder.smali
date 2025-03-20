.class Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;
.super Ljava/lang/Object;
.source "RecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientTokenHolder"
.end annotation


# instance fields
.field final cryptoStatus:Landroid/view/View;

.field final cryptoStatusIcon:Landroid/widget/ImageView;

.field final cryptoStatusSimple:Landroid/widget/ImageView;

.field public final email:Landroid/widget/TextView;

.field public final name:Landroid/widget/TextView;

.field final photo:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const v0, 0x7f0c00f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->name:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0c00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->email:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f0c00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->photo:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f0c00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatus:Landroid/view/View;

    .line 201
    const v0, 0x7f0c00f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatusIcon:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f0c00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$RecipientTokenHolder;->cryptoStatusSimple:Landroid/widget/ImageView;

    .line 203
    return-void
.end method
