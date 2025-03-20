.class Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$1;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 1677
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1678
    return-void
.end method
