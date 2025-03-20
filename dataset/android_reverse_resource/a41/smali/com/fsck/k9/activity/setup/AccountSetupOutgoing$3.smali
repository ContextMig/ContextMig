.class Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$3;
.super Ljava/lang/Object;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$900(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    .line 514
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 517
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 520
    return-void
.end method
