.class Lcom/fsck/k9/activity/NotificationDeleteConfirmation$1;
.super Ljava/lang/Object;
.source "NotificationDeleteConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->createDeleteConfirmationDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/NotificationDeleteConfirmation;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/NotificationDeleteConfirmation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/NotificationDeleteConfirmation;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation$1;->this$0:Lcom/fsck/k9/activity/NotificationDeleteConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation$1;->this$0:Lcom/fsck/k9/activity/NotificationDeleteConfirmation;

    invoke-static {v0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->access$000(Lcom/fsck/k9/activity/NotificationDeleteConfirmation;)V

    .line 130
    return-void
.end method
