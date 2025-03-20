.class Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;
.super Ljava/lang/Object;
.source "AccountList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/AccountList$AccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountViewHolder"
.end annotation


# instance fields
.field public chip:Landroid/view/View;

.field public description:Landroid/widget/TextView;

.field public email:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/fsck/k9/activity/AccountList$AccountsAdapter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/AccountList$AccountsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->this$1:Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
