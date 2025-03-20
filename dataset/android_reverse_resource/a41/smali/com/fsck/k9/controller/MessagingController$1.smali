.class Lcom/fsck/k9/controller/MessagingController$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;-><init>(Landroid/content/Context;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/helper/Contacts;Lcom/fsck/k9/mail/TransportProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->access$000(Lcom/fsck/k9/controller/MessagingController;)V

    .line 173
    return-void
.end method
