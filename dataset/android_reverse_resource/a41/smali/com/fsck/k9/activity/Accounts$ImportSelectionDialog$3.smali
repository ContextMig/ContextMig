.class Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$3;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->show(Lcom/fsck/k9/activity/Accounts;Landroid/util/SparseBooleanArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

.field final synthetic val$activity:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$3;->this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$3;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1722
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1723
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$3;->val$activity:Lcom/fsck/k9/activity/Accounts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1724
    return-void
.end method
