.class Lcom/fsck/k9/activity/setup/AccountSetupBasics$2;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V

    .line 264
    return-void
.end method
