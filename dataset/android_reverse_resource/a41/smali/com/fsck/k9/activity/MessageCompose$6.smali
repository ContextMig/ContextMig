.class Lcom/fsck/k9/activity/MessageCompose$6;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$6;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$6;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->dismissDialog(I)V

    .line 1120
    return-void
.end method
