.class Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
.super Ljava/lang/Object;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountViewHolder"
.end annotation


# instance fields
.field public accountsItemLayout:Landroid/widget/LinearLayout;

.field public activeIcons:Landroid/widget/RelativeLayout;

.field public chip:Landroid/view/View;

.field public description:Landroid/widget/TextView;

.field public email:Landroid/widget/TextView;

.field public flaggedMessageCount:Landroid/widget/TextView;

.field public flaggedMessageCountIcon:Landroid/view/View;

.field public flaggedMessageCountWrapper:Landroid/view/View;

.field public folders:Landroid/widget/ImageButton;

.field public newMessageCount:Landroid/widget/TextView;

.field public newMessageCountIcon:Landroid/view/View;

.field public newMessageCountWrapper:Landroid/view/View;

.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
