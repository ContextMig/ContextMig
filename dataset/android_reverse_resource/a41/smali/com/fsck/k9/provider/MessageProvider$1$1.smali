.class Lcom/fsck/k9/provider/MessageProvider$1$1;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/MessageProvider$1;->initializeComponent(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/provider/MessageProvider$1;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/fsck/k9/provider/MessageProvider$1;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/provider/MessageProvider$1;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$1$1;->this$1:Lcom/fsck/k9/provider/MessageProvider$1;

    iput-object p2, p0, Lcom/fsck/k9/provider/MessageProvider$1$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$1$1;->val$application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/provider/MessageProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 112
    return-void
.end method
