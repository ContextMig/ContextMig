.class Lcom/fsck/k9/provider/MessageProvider$1;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/K9$ApplicationAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/MessageProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method constructor <init>(Lcom/fsck/k9/provider/MessageProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/MessageProvider;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$1;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeComponent(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 106
    const-string v0, "Registering content resolver notifier"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {p1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$1$1;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/provider/MessageProvider$1$1;-><init>(Lcom/fsck/k9/provider/MessageProvider$1;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 114
    return-void
.end method
