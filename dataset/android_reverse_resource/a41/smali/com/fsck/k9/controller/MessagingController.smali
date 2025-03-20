.class public Lcom/fsck/k9/controller/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/controller/MessagingController$MessageActor;,
        Lcom/fsck/k9/controller/MessagingController$Command;
    }
.end annotation


# static fields
.field public static final INVALID_MESSAGE_ID:J = -0x1L

.field private static final SYNC_FLAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field private static inst:Lcom/fsck/k9/controller/MessagingController;

.field private static sequencing:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

.field private final contacts:Lcom/fsck/k9/helper/Contacts;

.field private final context:Landroid/content/Context;

.field private final controllerThread:Ljava/lang/Thread;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final memorizingMessagingListener:Lcom/fsck/k9/controller/MemorizingMessagingListener;

.field private final notificationController:Lcom/fsck/k9/notification/NotificationController;

.field private final pushers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Pusher;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fsck/k9/controller/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final sendCount:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopped:Z

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final transportProvider:Lcom/fsck/k9/mail/TransportProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 124
    sget-object v0, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/Set;

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;

    .line 3855
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/helper/Contacts;Lcom/fsck/k9/mail/TransportProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationController"    # Lcom/fsck/k9/notification/NotificationController;
    .param p3, "contacts"    # Lcom/fsck/k9/helper/Contacts;
    .param p4, "transportProvider"    # Lcom/fsck/k9/mail/TransportProvider;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/BlockingQueue;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->sendCount:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 141
    new-instance v0, Lcom/fsck/k9/controller/MemorizingMessagingListener;

    invoke-direct {v0}, Lcom/fsck/k9/controller/MemorizingMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingMessagingListener:Lcom/fsck/k9/controller/MemorizingMessagingListener;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/controller/MessagingController;->stopped:Z

    .line 164
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 166
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 167
    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController;->transportProvider:Lcom/fsck/k9/mail/TransportProvider;

    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(Lcom/fsck/k9/controller/MessagingController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->controllerThread:Ljava/lang/Thread;

    .line 175
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->controllerThread:Ljava/lang/Thread;

    const-string v1, "MessagingController"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->controllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingMessagingListener:Lcom/fsck/k9/controller/MemorizingMessagingListener;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/controller/MessagingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingController;->runInBackground()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/controller/MessagingController;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/fsck/k9/mail/Flag;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 121
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/controller/MessagingController;->setFlagSynchronous(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p5, "x5"    # Z

    .prologue
    .line 121
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/controller/MessagingController;->loadMessageRemoteSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/fsck/k9/controller/MessagingController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->messagesPendingSend(Lcom/fsck/k9/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->showSendingNotificationIfNecessary(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->clearSendingNotificationIfNecessary(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->suppressMessages(Lcom/fsck/k9/Account;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 121
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/controller/MessagingController;->moveOrCopyMessageSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p3, "x3"    # Ljava/lang/Runnable;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/fsck/k9/Account;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/Account;
    .param p1, "x1"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->collectMessagesInThreads(Lcom/fsck/k9/Account;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->queueExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->deleteThreadsSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->deleteMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->isTrashLocalOnly(Lcom/fsck/k9/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/fsck/k9/controller/MessagingController;Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/fsck/k9/Account;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->checkMailForAccount(Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->showFetchingMailNotificationIfNecessary(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->clearFetchingMailNotificationIfNecessary(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$2900()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/fsck/k9/controller/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mailstore/LocalMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/mailstore/LocalMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "x3"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct/range {p0 .. p6}, Lcom/fsck/k9/controller/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/controller/MessagingController;Ljava/util/List;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "x3"    # Lcom/fsck/k9/mail/Folder;
    .param p4, "x4"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->loadSearchResultsSynchronous(Ljava/util/List;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/mail/Message;
    .param p3, "x3"    # Ljava/util/Date;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->shouldImportMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "x3"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->shouldNotifyForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/controller/MessagingController;)Lcom/fsck/k9/notification/NotificationController;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    return-void
.end method

.method private actOnMessageGroup(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p4, "actor"    # Lcom/fsck/k9/controller/MessagingController$MessageActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Lcom/fsck/k9/controller/MessagingController$MessageActor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4140
    .local p3, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    .line 4141
    .local v2, "messageFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByReference(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 4142
    .local v1, "localMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-interface {p4, p1, v2, v1}, Lcom/fsck/k9/controller/MessagingController$MessageActor;->act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4147
    .end local v1    # "localMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .end local v2    # "messageFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :goto_0
    return-void

    .line 4143
    :catch_0
    move-exception v0

    .line 4144
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Error loading account?!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V
    .locals 11
    .param p2, "actor"    # Lcom/fsck/k9/controller/MessagingController$MessageActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Lcom/fsck/k9/controller/MessagingController$MessageActor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4094
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->groupMessagesByAccountAndFolder(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 4096
    .local v1, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4097
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4098
    .local v2, "accountUuid":Ljava/lang/String;
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 4100
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 4101
    .local v5, "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4102
    .local v4, "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4103
    .local v6, "folderName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4104
    .local v7, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-direct {p0, v0, v6, v7, p2}, Lcom/fsck/k9/controller/MessagingController;->actOnMessageGroup(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    goto :goto_0

    .line 4107
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "accountUuid":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;>;"
    .end local v4    # "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    .end local v5    # "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    .end local v6    # "folderName":Ljava/lang/String;
    .end local v7    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    :cond_1
    return-void
.end method

.method private checkMailForAccount(Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "ignoreLastCheckedTime"    # Z
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3486
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3487
    const-string v4, "Skipping synchronizing unavailable account %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3561
    :goto_0
    return-void

    .line 3490
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v8, v4

    .line 3491
    .local v8, "accountInterval":J
    if-nez p3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-gtz v4, :cond_1

    .line 3492
    const-string v4, "Skipping synchronizing account %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3496
    :cond_1
    const-string v4, "Synchronizing account %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3498
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/fsck/k9/Account;->setRingNotified(Z)V

    .line 3500
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 3503
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v11

    .line 3504
    .local v11, "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v12

    .line 3506
    .local v12, "aSyncMode":Lcom/fsck/k9/Account$FolderMode;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v16

    .line 3507
    .local v16, "localStore":Lcom/fsck/k9/mail/Store;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/Store;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Folder;

    .line 3508
    .local v6, "folder":Lcom/fsck/k9/mail/Folder;
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 3510
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v14

    .line 3511
    .local v14, "fDisplayClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v15

    .line 3513
    .local v15, "fSyncClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/fsck/k9/controller/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3525
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/fsck/k9/controller/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    .line 3536
    invoke-direct/range {v4 .. v10}, Lcom/fsck/k9/controller/MessagingController;->synchronizeFolder(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;ZJLcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3538
    .end local v6    # "folder":Lcom/fsck/k9/mail/Folder;
    .end local v11    # "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    .end local v12    # "aSyncMode":Lcom/fsck/k9/Account$FolderMode;
    .end local v14    # "fDisplayClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v15    # "fSyncClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v16    # "localStore":Lcom/fsck/k9/mail/Store;
    :catch_0
    move-exception v13

    .line 3539
    .local v13, "e":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    const-string v4, "Unable to synchronize account %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v13, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear notification flag for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v7, Lcom/fsck/k9/controller/MessagingController$36;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v7, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController$36;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v13    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v11    # "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    .restart local v12    # "aSyncMode":Lcom/fsck/k9/Account$FolderMode;
    .restart local v16    # "localStore":Lcom/fsck/k9/mail/Store;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear notification flag for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v7, Lcom/fsck/k9/controller/MessagingController$36;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v7, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController$36;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v11    # "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    .end local v12    # "aSyncMode":Lcom/fsck/k9/Account$FolderMode;
    .end local v16    # "localStore":Lcom/fsck/k9/mail/Store;
    :catchall_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clear notification flag for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v10, Lcom/fsck/k9/controller/MessagingController$36;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v10, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController$36;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v10}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    throw v4
.end method

.method private clearFetchingMailNotificationIfNecessary(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 3623
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3624
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NotificationController;->clearFetchingMailNotification(Lcom/fsck/k9/Account;)V

    .line 3626
    :cond_0
    return-void
.end method

.method private clearSendingNotificationIfNecessary(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 2507
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NotificationController;->clearSendingNotification(Lcom/fsck/k9/Account;)V

    .line 2510
    :cond_0
    return-void
.end method

.method private static closeFolder(Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p0, "f"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 1005
    if-eqz p0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->close()V

    .line 1008
    :cond_0
    return-void
.end method

.method private static collectMessagesInThreads(Lcom/fsck/k9/Account;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3109
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    .line 3111
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3112
    .local v4, "messagesInThreads":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Message;

    .local v2, "message":Lcom/fsck/k9/mail/Message;
    move-object v0, v2

    .line 3113
    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 3114
    .local v0, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->getRootId()J

    move-result-wide v6

    .line 3115
    .local v6, "rootId":J
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-nez v10, :cond_0

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->getThreadId()J

    move-result-wide v8

    .line 3117
    .local v8, "threadId":J
    :goto_1
    invoke-virtual {v1, v8, v9}, Lcom/fsck/k9/mailstore/LocalStore;->getMessagesInThread(J)Ljava/util/List;

    move-result-object v3

    .line 3119
    .local v3, "messagesInThread":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .end local v3    # "messagesInThread":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    .end local v8    # "threadId":J
    :cond_0
    move-wide v8, v6

    .line 3115
    goto :goto_1

    .line 3122
    .end local v0    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v2    # "message":Lcom/fsck/k9/mail/Message;
    .end local v6    # "rootId":J
    :cond_1
    return-object v4
.end method

.method private deleteMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 18
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3180
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v13, 0x0

    .line 3181
    .local v13, "localFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v15, 0x0

    .line 3182
    .local v15, "localTrashFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static/range {p3 .. p3}, Lcom/fsck/k9/controller/MessagingController;->getUidsFromMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 3186
    .local v8, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/fsck/k9/mail/Message;

    .line 3187
    .local v17, "message":Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/controller/MessagingListener;

    .line 3188
    .local v12, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-interface {v12, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3244
    .end local v12    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v17    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v11

    .line 3245
    .local v11, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :try_start_1
    const-string v3, "Failed to delete message because storage is not available - trying again later."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3246
    new-instance v3, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v3, v11}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3250
    .end local v11    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catchall_0
    move-exception v3

    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 3251
    invoke-static {v15}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v3

    .line 3191
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v14

    .line 3192
    .local v14, "localStore":Lcom/fsck/k9/mail/Store;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v13

    .line 3193
    const/4 v9, 0x0

    .line 3194
    .local v9, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->hasTrashFolder()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3195
    :cond_2
    const-string v3, "Deleting messages in trash folder or trash set to -None-, not copying"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3197
    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v3, v4}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    .line 3211
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/controller/MessagingListener;

    .line 3212
    .restart local v12    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual {v13}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v1, v4}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    .line 3213
    if-eqz v15, :cond_4

    .line 3214
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v4

    .line 3215
    invoke-virtual {v15}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v5

    .line 3214
    move-object/from16 v0, p1

    invoke-interface {v12, v0, v4, v5}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3247
    .end local v9    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v14    # "localStore":Lcom/fsck/k9/mail/Store;
    :catch_1
    move-exception v16

    .line 3248
    .local v16, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error deleting message from local store."

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3199
    .end local v16    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v9    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "localStore":Lcom/fsck/k9/mail/Store;
    :cond_5
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v15

    .line 3200
    invoke-virtual {v15}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3201
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v15, v3}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    .line 3203
    :cond_6
    invoke-virtual {v15}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3204
    const-string v3, "Deleting messages in normal folder, moving"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3206
    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v15}, Lcom/fsck/k9/mail/Folder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    move-result-object v9

    goto :goto_1

    .line 3219
    :cond_7
    const-string v3, "Delete policy for account %s is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3221
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3222
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/fsck/k9/mail/Message;

    .line 3225
    .restart local v17    # "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    move-result-object v10

    .line 3226
    .local v10, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    goto :goto_3

    .line 3228
    .end local v10    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .end local v17    # "message":Lcom/fsck/k9/mail/Message;
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    .line 3243
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->unsuppressMessages(Lcom/fsck/k9/Account;Ljava/util/List;)V
    :try_end_4
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3250
    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 3251
    invoke-static {v15}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 3253
    return-void

    .line 3229
    :cond_9
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$DeletePolicy;->ON_DELETE:Lcom/fsck/k9/Account$DeletePolicy;

    if-ne v3, v4, :cond_b

    .line 3230
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3231
    const/4 v6, 0x1

    sget-object v7, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V

    .line 3235
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto :goto_4

    .line 3233
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/Map;)V

    goto :goto_5

    .line 3236
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$DeletePolicy;->MARK_AS_READ:Lcom/fsck/k9/Account$DeletePolicy;

    if-ne v3, v4, :cond_c

    .line 3237
    const/4 v6, 0x1

    sget-object v7, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V

    .line 3238
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto :goto_4

    .line 3240
    :cond_c
    const-string v3, "Delete policy %s prevents delete from server"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDeletePolicy()Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method private deleteThreadsSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3097
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :try_start_0
    invoke-static {p1, p3}, Lcom/fsck/k9/controller/MessagingController;->collectMessagesInThreads(Lcom/fsck/k9/Account;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3099
    .local v1, "messagesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->deleteMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3104
    .end local v1    # "messagesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :goto_0
    return-void

    .line 3101
    :catch_0
    move-exception v0

    .line 3102
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "Something went wrong while deleting threads"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doRefreshRemote(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 410
    const-string v0, "doRefreshRemote"

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$4;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method private downloadLargeMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p5, "progress"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "unreadBeforeStart"    # I
    .param p7, "newMessages"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "todo"    # I
    .param p9, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fsck/k9/mail/Message;",
            ">(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder",
            "<TT;>;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Lcom/fsck/k9/mail/FetchProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1411
    .local p2, "remoteFolder":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p4, "largeMessages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1412
    .local v2, "folder":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v1

    .line 1414
    .local v1, "earliestDate":Ljava/util/Date;
    const-string v6, "SYNC: Fetching large messages for folder %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    const/4 v6, 0x0

    move-object/from16 v0, p9

    invoke-virtual {p2, p4, v0, v6}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1417
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    .line 1419
    .local v5, "message":Lcom/fsck/k9/mail/Message;, "TT;"
    invoke-direct {p0, p1, v5, v1}, Lcom/fsck/k9/controller/MessagingController;->shouldImportMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1420
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 1424
    :cond_1
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1425
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/fsck/k9/controller/MessagingController;->downloadSaneBody(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)V

    .line 1430
    :goto_1
    const-string v7, "About to notify listeners that we got a new large message %s:%s:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    .line 1431
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1430
    invoke-static {v7, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1434
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1436
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v4

    .line 1439
    .local v4, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    sget-object v7, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1440
    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1442
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/controller/MessagingListener;

    .line 1443
    .local v3, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    move/from16 v0, p8

    invoke-interface {v3, p1, v2, v8, v0}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 1444
    sget-object v8, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4, v8}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1445
    invoke-interface {v3, p1, v2, v4}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_2

    .line 1427
    .end local v3    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v4    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_4
    invoke-direct {p0, p2, p3, v5}, Lcom/fsck/k9/controller/MessagingController;->downloadPartial(Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)V

    goto :goto_1

    .line 1449
    .restart local v4    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_5
    invoke-direct {p0, p1, p3, v5}, Lcom/fsck/k9/controller/MessagingController;->shouldNotifyForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1451
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move/from16 v0, p6

    invoke-virtual {v7, p1, v4, v0}, Lcom/fsck/k9/notification/NotificationController;->addNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;I)V

    goto/16 :goto_0

    .line 1455
    .end local v4    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;, "TT;"
    :cond_6
    const-string v6, "SYNC: Done fetching large messages for folder %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1456
    return-void
.end method

.method private downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZZ)I
    .locals 48
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p5, "flagSyncOnly"    # Z
    .param p6, "purgeToVisibleLimit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;ZZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1061
    .local p4, "inputMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v38

    .line 1062
    .local v38, "earliestDate":Ljava/util/Date;
    new-instance v36, Ljava/util/Date;

    invoke-direct/range {v36 .. v36}, Ljava/util/Date;-><init>()V

    .line 1064
    .local v36, "downloadStarted":Ljava/util/Date;
    if-eqz v38, :cond_0

    .line 1065
    const-string v4, "Only syncing messages after %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v38, v7, v8

    invoke-static {v4, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1069
    .local v6, "folder":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1071
    .local v27, "unreadBeforeStart":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v45

    .line 1072
    .local v45, "stats":Lcom/fsck/k9/AccountStats;
    move-object/from16 v0, v45

    iget v0, v0, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    move/from16 v27, v0
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    .end local v45    # "stats":Lcom/fsck/k9/AccountStats;
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    .local v11, "syncFlagMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v10, "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    new-instance v28, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1082
    .local v28, "newMessages":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1084
    .local v41, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    .local v5, "message":Lcom/fsck/k9/mail/Message;
    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v12, p5

    .line 1085
    invoke-direct/range {v4 .. v12}, Lcom/fsck/k9/controller/MessagingController;->evaluateMessageForDownload(Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_1

    .line 1074
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    .end local v10    # "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v11    # "syncFlagMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v28    # "newMessages":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v41    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :catch_0
    move-exception v37

    .line 1075
    .local v37, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v4, "Unable to getUnreadMessageCount for account: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    move-object/from16 v0, v37

    invoke-static {v0, v4, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1089
    .end local v37    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v10    # "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v11    # "syncFlagMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v28    # "newMessages":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v41    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_1
    new-instance v18, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1090
    .local v18, "progress":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    add-int v19, v4, v7

    .line 1091
    .local v19, "todo":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/fsck/k9/controller/MessagingListener;

    .line 1092
    .local v39, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-interface {v0, v1, v6, v7, v2}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_2

    .line 1095
    .end local v39    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_2
    const-string v4, "SYNC: Have %d unsynced messages"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->clear()V

    .line 1098
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v17, "largeMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    .local v16, "smallMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1106
    new-instance v4, Lcom/fsck/k9/controller/UidReverseComparator;

    invoke-direct {v4}, Lcom/fsck/k9/controller/UidReverseComparator;-><init>()V

    invoke-static {v10, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getVisibleLimit()I

    move-result v47

    .line 1108
    .local v47, "visibleLimit":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v40

    .line 1110
    .local v40, "listSize":I
    if-lez v47, :cond_3

    move/from16 v0, v40

    move/from16 v1, v47

    if-le v0, v1, :cond_3

    .line 1111
    const/4 v4, 0x0

    move/from16 v0, v47

    invoke-interface {v10, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 1114
    :cond_3
    new-instance v20, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct/range {v20 .. v20}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1115
    .local v20, "fp":Lcom/fsck/k9/mail/FetchProfile;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->supportsFetchingFlags()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1116
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_4
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1120
    const-string v4, "SYNC: About to fetch %d unsynced messages for folder %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v15, v10

    .line 1122
    invoke-direct/range {v12 .. v20}, Lcom/fsck/k9/controller/MessagingController;->fetchUnsyncedMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v46

    .line 1126
    .local v46, "updatedPushState":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    .line 1127
    .restart local v5    # "message":Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v5}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v42

    .line 1128
    .local v42, "newPushState":Ljava/lang/String;
    if-eqz v42, :cond_5

    .line 1129
    move-object/from16 v46, v42

    goto :goto_3

    .line 1132
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    .end local v42    # "newPushState":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->setPushState(Ljava/lang/String;)V

    .line 1134
    const-string v4, "SYNC: Synced unsynced messages for folder %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    .end local v20    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v40    # "listSize":I
    .end local v46    # "updatedPushState":Ljava/lang/String;
    .end local v47    # "visibleLimit":I
    :cond_7
    const-string v4, "SYNC: Have %d large messages and %d small messages out of %d unsynced messages"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1138
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1137
    invoke-static {v4, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 1146
    new-instance v20, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct/range {v20 .. v20}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1148
    .restart local v20    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, p3

    move-object/from16 v25, v16

    move-object/from16 v26, v18

    move/from16 v29, v19

    move-object/from16 v30, v20

    .line 1151
    invoke-direct/range {v21 .. v30}, Lcom/fsck/k9/controller/MessagingController;->downloadSmallMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V

    .line 1153
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 1157
    new-instance v20, Lcom/fsck/k9/mail/FetchProfile;

    .end local v20    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    invoke-direct/range {v20 .. v20}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1158
    .restart local v20    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, p3

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    move/from16 v29, v19

    move-object/from16 v30, v20

    .line 1159
    invoke-direct/range {v21 .. v30}, Lcom/fsck/k9/controller/MessagingController;->downloadLargeMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V

    .line 1161
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v32, p3

    move-object/from16 v33, v11

    move-object/from16 v34, v18

    move/from16 v35, v19

    .line 1168
    invoke-direct/range {v29 .. v35}, Lcom/fsck/k9/controller/MessagingController;->refreshLocalMessageFlags(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 1170
    const-string v4, "SYNC: Synced remote messages for folder %s, %d new messages"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    if-eqz p6, :cond_8

    .line 1173
    new-instance v4, Lcom/fsck/k9/controller/MessagingController$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v6}, Lcom/fsck/k9/controller/MessagingController$10;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->purgeToVisibleLimit(Lcom/fsck/k9/mailstore/MessageRemovalListener;)V

    .line 1190
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getOldestMessageDate()Ljava/lang/Long;

    move-result-object v44

    .line 1192
    .local v44, "oldestMessageTime":Ljava/lang/Long;
    if-eqz v44, :cond_9

    .line 1193
    new-instance v43, Ljava/util/Date;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v43

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1194
    .local v43, "oldestExtantMessage":Ljava/util/Date;
    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/util/Date;

    .line 1195
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLatestOldMessageSeenTime()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1196
    invoke-virtual/range {v43 .. v43}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/fsck/k9/Account;->setLatestOldMessageSeenTime(J)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 1201
    .end local v43    # "oldestExtantMessage":Ljava/util/Date;
    :cond_9
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    return v4
.end method

.method private downloadPartial(Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)V
    .locals 6
    .param p1, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p2, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-static {p3}, Lcom/fsck/k9/mail/internet/MessageExtractor;->collectTextParts(Lcom/fsck/k9/mail/Message;)Ljava/util/Set;

    move-result-object v3

    .line 1472
    .local v3, "viewables":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    new-instance v0, Lcom/fsck/k9/mail/DefaultBodyFactory;

    invoke-direct {v0}, Lcom/fsck/k9/mail/DefaultBodyFactory;-><init>()V

    .line 1473
    .local v0, "bodyFactory":Lcom/fsck/k9/mail/BodyFactory;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 1474
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    const/4 v5, 0x0

    invoke-virtual {p1, p3, v2, v5, v0}, Lcom/fsck/k9/mail/Folder;->fetchPart(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/BodyFactory;)V

    goto :goto_0

    .line 1477
    .end local v2    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 1479
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v1

    .line 1483
    .local v1, "localMessage":Lcom/fsck/k9/mail/Message;
    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1484
    return-void
.end method

.method private downloadSaneBody(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p4, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1494
    new-instance v0, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v0}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1495
    .local v0, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v3}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1505
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 1507
    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v1

    .line 1511
    .local v1, "localMessage":Lcom/fsck/k9/mail/Message;
    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p4, v2}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1521
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1522
    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1523
    :cond_0
    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v2, v6}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1531
    :cond_1
    :goto_0
    return-void

    .line 1527
    :cond_2
    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v2, v6}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0
.end method

.method private downloadSmallMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p5, "progress"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "unreadBeforeStart"    # I
    .param p7, "newMessages"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "todo"    # I
    .param p9, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fsck/k9/mail/Message;",
            ">(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder",
            "<TT;>;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Lcom/fsck/k9/mail/FetchProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1337
    .local p2, "remoteFolder":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p4, "smallMessages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1339
    .local v8, "folder":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v4

    .line 1341
    .local v4, "earliestDate":Ljava/util/Date;
    const-string v1, "SYNC: Fetching %d small messages for folder %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$12;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p5

    move-object v6, p3

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/fsck/k9/controller/MessagingController$12;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/Date;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;II)V

    move-object/from16 v0, p9

    invoke-virtual {p2, p4, v0, v1}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1400
    const-string v1, "SYNC: Done fetching small messages for folder %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    return-void
.end method

.method private evaluateMessageForDownload(Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;Ljava/util/List;Ljava/util/List;Z)V
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p4, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p5, "account"    # Lcom/fsck/k9/Account;
    .param p8, "flagSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1211
    .local p6, "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .local p7, "syncFlagMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    const-string v3, "Message with uid %s is marked as deleted"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v1

    .line 1220
    .local v1, "localMessage":Lcom/fsck/k9/mail/Message;
    if-nez v1, :cond_4

    .line 1221
    if-nez p8, :cond_0

    .line 1222
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1223
    const-string v3, "Message with uid %s has not yet been downloaded"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1227
    :cond_2
    const-string v3, "Message with uid %s is partially or fully downloaded"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 1232
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v1

    .line 1234
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1235
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1237
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 1238
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1239
    invoke-interface {v0, p5, p2, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_1

    .line 1244
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_4
    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1245
    const-string v3, "Message with uid %s is present in the local store"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1248
    const-string v3, "Message with uid %s is not downloaded, even partially; trying again"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1252
    :cond_5
    invoke-virtual {p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3, p1}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v2

    .line 1253
    .local v2, "newPushState":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1254
    invoke-virtual {p3, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->setPushState(Ljava/lang/String;)V

    .line 1256
    :cond_6
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1259
    .end local v2    # "newPushState":Ljava/lang/String;
    :cond_7
    const-string v3, "Local copy of message with uid %s is marked as deleted"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private fetchUnsyncedMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V
    .locals 10
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p6, "progress"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p7, "todo"    # I
    .param p8, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fsck/k9/mail/Message;",
            ">(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Lcom/fsck/k9/mail/FetchProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1270
    .local p2, "remoteFolder":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p3, "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "smallMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .local p5, "largeMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1272
    .local v5, "folder":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v3

    .line 1273
    .local v3, "earliestDate":Ljava/util/Date;
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$11;

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p5

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/fsck/k9/controller/MessagingController$11;-><init>(Lcom/fsck/k9/controller/MessagingController;Ljava/util/Date;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p8

    invoke-virtual {p2, p3, v0, v1}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1317
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-class v5, Lcom/fsck/k9/controller/MessagingController;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;

    if-nez v4, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/fsck/k9/notification/NotificationController;->newInstance(Landroid/content/Context;)Lcom/fsck/k9/notification/NotificationController;

    move-result-object v2

    .line 153
    .local v2, "notificationController":Lcom/fsck/k9/notification/NotificationController;
    invoke-static {p0}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v1

    .line 154
    .local v1, "contacts":Lcom/fsck/k9/helper/Contacts;
    invoke-static {}, Lcom/fsck/k9/mail/TransportProvider;->getInstance()Lcom/fsck/k9/mail/TransportProvider;

    move-result-object v3

    .line 155
    .local v3, "transportProvider":Lcom/fsck/k9/mail/TransportProvider;
    new-instance v4, Lcom/fsck/k9/controller/MessagingController;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/fsck/k9/controller/MessagingController;-><init>(Landroid/content/Context;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/helper/Contacts;Lcom/fsck/k9/mail/TransportProvider;)V

    sput-object v4, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;

    .line 157
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "contacts":Lcom/fsck/k9/helper/Contacts;
    .end local v2    # "notificationController":Lcom/fsck/k9/notification/NotificationController;
    .end local v3    # "transportProvider":Lcom/fsck/k9/mail/TransportProvider;
    :cond_0
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 150
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1606
    move-object v1, p1

    .line 1609
    .local v1, "rootCause":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1610
    .local v0, "nextCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 1611
    move-object v1, v0

    .line 1613
    :cond_1
    if-nez v0, :cond_0

    .line 1614
    instance-of v2, v1, Lcom/fsck/k9/mail/MessagingException;

    if-eqz v2, :cond_2

    .line 1615
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1619
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1620
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1621
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getUidsFromMessages(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3256
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3257
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3258
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3260
    :cond_0
    return-object v1
.end method

.method private groupMessagesByAccountAndFolder(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 4112
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4114
    .local v0, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/activity/MessageReference;

    .line 4115
    .local v4, "message":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v4, :cond_0

    .line 4118
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    .line 4119
    .local v1, "accountUuid":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v3

    .line 4121
    .local v3, "folderName":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4122
    .local v2, "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    if-nez v2, :cond_1

    .line 4123
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4124
    .restart local v2    # "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4127
    .local v5, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    if-nez v5, :cond_2

    .line 4128
    new-instance v5, Ljava/util/LinkedList;

    .end local v5    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 4129
    .restart local v5    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4134
    .end local v1    # "accountUuid":Ljava/lang/String;
    .end local v2    # "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    .end local v3    # "folderName":Ljava/lang/String;
    .end local v4    # "message":Lcom/fsck/k9/activity/MessageReference;
    .end local v5    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    :cond_3
    return-object v0
.end method

.method private handleSendFailure(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Store;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/Message;Ljava/lang/Exception;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "localStore"    # Lcom/fsck/k9/mail/Store;
    .param p3, "localFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p4, "message"    # Lcom/fsck/k9/mail/Message;
    .param p5, "exception"    # Ljava/lang/Exception;
    .param p6, "permanentFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2697
    const-string v0, "Failed to send message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2699
    if-eqz p6, :cond_0

    .line 2700
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/fsck/k9/controller/MessagingController;->moveMessageToDraftsFolder(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/Store;Lcom/fsck/k9/mail/Message;)V

    .line 2703
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/Flag;->X_SEND_FAILED:Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2705
    invoke-direct {p0, p1, p3, p5}, Lcom/fsck/k9/controller/MessagingController;->notifySynchronizeMailboxFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/lang/Exception;)V

    .line 2706
    return-void
.end method

.method private isMessageSuppressed(Lcom/fsck/k9/mailstore/LocalMessage;)Z
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v4

    .line 301
    .local v4, "messageId":J
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v2

    .line 303
    .local v2, "folderId":J
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v0

    .line 304
    .local v0, "cache":Lcom/fsck/k9/cache/EmailProviderCache;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/cache/EmailProviderCache;->isMessageHidden(Ljava/lang/Long;J)Z

    move-result v1

    return v1
.end method

.method private isTrashLocalOnly(Lcom/fsck/k9/Account;)Z
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3370
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v0

    instance-of v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    return v0
.end method

.method private loadMessageRemoteSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Z)Z
    .locals 17
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p5, "loadPartialFromSearch"    # Z

    .prologue
    .line 2292
    const/4 v5, 0x0

    .line 2293
    .local v5, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v6, 0x0

    .line 2295
    .local v6, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v13

    .line 2296
    .local v13, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v6

    .line 2297
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 2299
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v14

    .line 2301
    .local v14, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    const-string v3, "K9LOCAL:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2302
    const-string v3, "Message has local UID so cannot download fully."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    const-string v4, "Message has local UID so cannot download fully"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 2306
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2309
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2310
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2338
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/controller/MessagingListener;

    .line 2339
    .local v12, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v12, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->loadMessageRemoteFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2343
    .end local v12    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v13    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v14    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :catch_0
    move-exception v10

    .line 2344
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/controller/MessagingListener;

    .line 2345
    .restart local v12    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v12, v0, v1, v2, v10}, Lcom/fsck/k9/controller/MessagingListener;->loadMessageRemoteFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2351
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catchall_0
    move-exception v3

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2352
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v3

    .line 2312
    .restart local v13    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v14    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v16

    .line 2313
    .local v16, "remoteStore":Lcom/fsck/k9/mail/Store;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v5

    .line 2314
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 2317
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v15

    .line 2319
    .local v15, "remoteMessage":Lcom/fsck/k9/mail/Message;
    if-eqz p5, :cond_2

    .line 2321
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 2320
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZZ)I

    .line 2330
    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v14

    .line 2332
    if-nez p5, :cond_0

    .line 2333
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 2323
    :cond_2
    new-instance v11, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v11}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 2324
    .local v11, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v11, v3}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2325
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v11, v3}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2326
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v11, v4}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 2327
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2342
    .end local v11    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v15    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .end local v16    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_3
    const/4 v3, 0x1

    .line 2351
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2352
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2349
    .end local v13    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v14    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :goto_4
    return v3

    .line 2347
    .restart local v10    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v3}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lcom/fsck/k9/Account;Ljava/lang/Exception;Z)V

    .line 2348
    const-string v3, "Error while loading remote message"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2349
    const/4 v3, 0x0

    .line 2351
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2352
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_4
.end method

.method private loadSearchResultsSynchronous(Ljava/util/List;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 8
    .param p2, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v7, 0x0

    .line 667
    new-instance v0, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v0}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 668
    .local v0, "header":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v4, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v4}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 671
    .local v4, "structure":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 673
    const/4 v1, 0x0

    .line 674
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Message;

    .line 675
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    add-int/lit8 v1, v1, 0x1

    .line 676
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v2

    .line 678
    .local v2, "localMsg":Lcom/fsck/k9/mailstore/LocalMessage;
    if-nez v2, :cond_0

    .line 679
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3, v6, v0, v7}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 681
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3, v6, v4, v7}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 682
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 683
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    goto :goto_0

    .line 686
    .end local v2    # "localMsg":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    :cond_1
    return-void
.end method

.method private markMessageAsReadOnView(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2380
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isMarkMessageAsReadOnView()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2381
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2382
    .local v0, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 2384
    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v1, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2386
    .end local v0    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method private messagesPendingSend(Lcom/fsck/k9/Account;)Z
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v2, 0x0

    .line 2513
    const/4 v1, 0x0

    .line 2515
    .local v1, "localFolder":Lcom/fsck/k9/mail/Folder;
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    .line 2516
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v4

    .line 2515
    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 2517
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 2529
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2531
    :goto_0
    return v2

    .line 2521
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 2523
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getMessageCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lez v3, :cond_1

    .line 2524
    const/4 v2, 0x1

    .line 2529
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 2526
    :catch_0
    move-exception v0

    .line 2527
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Exception while checking for unsent messages"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2529
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v2
.end method

.method private modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z
    .locals 1
    .param p1, "aMode"    # Lcom/fsck/k9/Account$FolderMode;
    .param p2, "fMode"    # Lcom/fsck/k9/mail/Folder$FolderClass;

    .prologue
    .line 3841
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne p2, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne p2, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne p2, v0, :cond_3

    .line 3849
    :cond_2
    const/4 v0, 0x1

    .line 3851
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveMessageToDraftsFolder(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/Store;Lcom/fsck/k9/mail/Message;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "localFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "localStore"    # Lcom/fsck/k9/mail/Store;
    .param p4, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2710
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 2711
    .local v0, "draftsFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/fsck/k9/mail/Folder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    .line 2712
    return-void
.end method

.method private moveOrCopyMessageSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 29
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p4, "destFolder"    # Ljava/lang/String;
    .param p5, "isCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2961
    .local p3, "inMessages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v16

    .line 2962
    .local v16, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v22

    .line 2963
    .local v22, "remoteStore":Lcom/fsck/k9/mail/Store;
    if-nez p5, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mailstore/LocalStore;->isMoveCapable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3048
    :cond_0
    :goto_0
    return-void

    .line 2966
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/Store;->isCopyCapable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mailstore/LocalStore;->isCopyCapable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2970
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v15

    .line 2971
    .local v15, "localSrcFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v14

    .line 2973
    .local v14, "localDestFolder":Lcom/fsck/k9/mail/Folder;
    const/16 v25, 0x0

    .line 2974
    .local v25, "unreadCountAffected":Z
    new-instance v24, Ljava/util/LinkedList;

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedList;-><init>()V

    .line 2975
    .local v24, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/Message;

    .line 2976
    .local v18, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v23

    .line 2977
    .local v23, "uid":Ljava/lang/String;
    const-string v4, "K9LOCAL:"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2978
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2981
    :cond_4
    if-nez v25, :cond_3

    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2982
    const/16 v25, 0x1

    goto :goto_1

    .line 2986
    .end local v18    # "message":Lcom/fsck/k9/mail/Message;
    .end local v23    # "uid":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 2987
    .local v19, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 2988
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 2990
    .local v21, "origUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/Message;

    .line 2991
    .restart local v18    # "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 3042
    .end local v14    # "localDestFolder":Lcom/fsck/k9/mail/Folder;
    .end local v15    # "localSrcFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v16    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v18    # "message":Lcom/fsck/k9/mail/Message;
    .end local v19    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .end local v21    # "origUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .end local v22    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .end local v24    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "unreadCountAffected":Z
    :catch_0
    move-exception v10

    .line 3043
    .local v10, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    const-string v3, "Failed to move/copy message because storage is not available - trying again later."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3044
    new-instance v3, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v3, v10}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2994
    .end local v10    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    .restart local v14    # "localDestFolder":Lcom/fsck/k9/mail/Folder;
    .restart local v15    # "localSrcFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v16    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v19    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .restart local v21    # "origUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .restart local v22    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .restart local v24    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "unreadCountAffected":Z
    :cond_6
    :try_start_1
    const-string v3, "moveOrCopyMessageSynchronous: source folder = %s, %d messages, destination folder = %s, isCopy = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    .line 2995
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2994
    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2999
    if-eqz p5, :cond_7

    .line 3000
    new-instance v12, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v12}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 3001
    .local v12, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v12, v3}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3002
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v12, v3}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3003
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v12, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 3004
    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v14}, Lcom/fsck/k9/mailstore/LocalFolder;->copyMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    move-result-object v9

    .line 3006
    .local v9, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v25, :cond_a

    .line 3009
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v26

    .line 3010
    .local v26, "unreadMessageCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/controller/MessagingListener;

    .line 3011
    .local v13, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, v26

    invoke-interface {v13, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 3045
    .end local v9    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v13    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v14    # "localDestFolder":Lcom/fsck/k9/mail/Folder;
    .end local v15    # "localSrcFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v16    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v19    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .end local v21    # "origUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .end local v22    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .end local v24    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "unreadCountAffected":Z
    .end local v26    # "unreadMessageCount":I
    :catch_1
    move-exception v17

    .line 3046
    .local v17, "me":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error moving message"

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3015
    .end local v17    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v14    # "localDestFolder":Lcom/fsck/k9/mail/Folder;
    .restart local v15    # "localSrcFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v16    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v19    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .restart local v21    # "origUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .restart local v22    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .restart local v24    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "unreadCountAffected":Z
    :cond_7
    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v14}, Lcom/fsck/k9/mailstore/LocalFolder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    move-result-object v9

    .line 3016
    .restart local v9    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3017
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 3018
    .local v20, "origUid":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/Message;

    .line 3019
    .restart local v18    # "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/controller/MessagingListener;

    .line 3020
    .restart local v13    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-interface {v13, v0, v1, v2, v5}, Lcom/fsck/k9/controller/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3023
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .end local v13    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v18    # "message":Lcom/fsck/k9/mail/Message;
    .end local v20    # "origUid":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->unsuppressMessages(Lcom/fsck/k9/Account;Ljava/util/List;)V

    .line 3025
    if-eqz v25, :cond_a

    .line 3028
    invoke-virtual {v15}, Lcom/fsck/k9/mailstore/LocalFolder;->getUnreadMessageCount()I

    move-result v28

    .line 3029
    .local v28, "unreadMessageCountSrc":I
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v27

    .line 3030
    .local v27, "unreadMessageCountDest":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/controller/MessagingListener;

    .line 3031
    .restart local v13    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v28

    invoke-interface {v13, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    .line 3032
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, v27

    invoke-interface {v13, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    goto :goto_5

    .line 3037
    .end local v13    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v27    # "unreadMessageCountDest":I
    .end local v28    # "unreadMessageCountSrc":I
    :cond_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v8, "origUidKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 3038
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/Map;)V

    .line 3041
    .end local v8    # "origUidKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "origUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private moveOrDeleteSentMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalStore;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 9
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "localStore"    # Lcom/fsck/k9/mailstore/LocalStore;
    .param p3, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p4, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2677
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->hasSentFolder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2678
    const-string v2, "Account does not have a sent mail folder; deleting sent message"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2679
    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p4, v2, v7}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2692
    :goto_0
    return-void

    .line 2681
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 2682
    .local v1, "localSentFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const-string v2, "Moving sent message to folder \'%s\' (%d)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2684
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    .line 2686
    const-string v2, "Moved sent message to folder \'%s\' (%d)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2688
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    move-result-object v0

    .line 2689
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 2690
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto :goto_0
.end method

.method private notifySynchronizeMailboxFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "localFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 2715
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2716
    .local v1, "folderName":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/fsck/k9/controller/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2717
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 2718
    .local v2, "listener":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v2, p1, v1, v0}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2720
    .end local v2    # "listener":Lcom/fsck/k9/controller/MessagingListener;
    :cond_0
    return-void
.end method

.method private processPendingCommands(Lcom/fsck/k9/Account;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 1635
    const-string v0, "processPendingCommands"

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/controller/MessagingController$13;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/controller/MessagingController$13;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 1654
    return-void
.end method

.method private processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V
    .locals 12
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1657
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    .line 1658
    .local v3, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalStore;->getPendingCommands()Ljava/util/List;

    move-result-object v1

    .line 1660
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;>;"
    const/4 v6, 0x0

    .line 1661
    .local v6, "progress":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1662
    .local v7, "todo":I
    if-nez v7, :cond_1

    .line 1715
    :cond_0
    return-void

    .line 1666
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 1667
    .local v2, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v2, p1}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V

    .line 1668
    invoke-interface {v2, p1, v10, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_0

    .line 1671
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_2
    const/4 v5, 0x0

    .line 1673
    .local v5, "processingCommand":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    .line 1674
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    move-object v5, v0

    .line 1675
    const-string v9, "Processing pending command \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1677
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 1678
    .restart local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, p1, v10}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1706
    .end local v0    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catch_0
    move-exception v4

    .line 1707
    .local v4, "me":Lcom/fsck/k9/mail/MessagingException;
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v4, v8}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lcom/fsck/k9/Account;Ljava/lang/Exception;Z)V

    .line 1708
    const-string v8, "Could not process command \'%s\'"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v4, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1709
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1711
    .end local v4    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 1712
    .restart local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v2, p1}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto :goto_2

    .line 1686
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .restart local v0    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    :cond_4
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->execute(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    .line 1688
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalStore;->removePendingCommand(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 1690
    const-string v9, "Done processing pending command \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1699
    add-int/lit8 v6, v6, 0x1

    .line 1700
    :try_start_3
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 1701
    .restart local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const/4 v10, 0x0

    invoke-interface {v2, p1, v10, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 1702
    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, p1, v10}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1691
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catch_1
    move-exception v4

    .line 1692
    .restart local v4    # "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_4
    invoke-virtual {v4}, Lcom/fsck/k9/mail/MessagingException;->isPermanentFailure()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1693
    const-string v9, "Failure of command \'%s\' was permanent, removing command from queue"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1694
    invoke-virtual {v3, v5}, Lcom/fsck/k9/mailstore/LocalStore;->removePendingCommand(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1699
    add-int/lit8 v6, v6, 0x1

    .line 1700
    :try_start_5
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 1701
    .restart local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const/4 v10, 0x0

    invoke-interface {v2, p1, v10, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 1702
    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, p1, v10}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1696
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_5
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1699
    .end local v4    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_1
    move-exception v8

    add-int/lit8 v6, v6, 0x1

    .line 1700
    :try_start_7
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 1701
    .restart local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const/4 v10, 0x0

    invoke-interface {v2, p1, v10, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 1702
    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, p1, v10}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_5

    .line 1703
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_6
    throw v8
    :try_end_7
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1711
    .end local v0    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    :cond_7
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 1712
    .restart local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v2, p1}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto :goto_6

    .line 1713
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_8
    throw v8
.end method

.method private put(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/BlockingQueue;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->putCommand(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;Z)V

    .line 230
    return-void
.end method

.method private putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/BlockingQueue;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->putCommand(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;Z)V

    .line 234
    return-void
.end method

.method private putCommand(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;Z)V
    .locals 8
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p4, "runnable"    # Ljava/lang/Runnable;
    .param p5, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fsck/k9/controller/MessagingController$Command;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/controller/MessagingListener;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/fsck/k9/controller/MessagingController$Command;>;"
    const/16 v3, 0xa

    .line 239
    .local v3, "retries":I
    const/4 v1, 0x0

    .local v1, "e":Ljava/lang/Exception;
    move v4, v3

    .line 240
    .end local v3    # "retries":I
    .local v4, "retries":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "retries":I
    .restart local v3    # "retries":I
    if-lez v4, :cond_0

    .line 242
    :try_start_0
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$Command;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/fsck/k9/controller/MessagingController$Command;-><init>(Lcom/fsck/k9/controller/MessagingController$1;)V

    .line 243
    .local v0, "command":Lcom/fsck/k9/controller/MessagingController$Command;
    iput-object p3, v0, Lcom/fsck/k9/controller/MessagingController$Command;->listener:Lcom/fsck/k9/controller/MessagingListener;

    .line 244
    iput-object p4, v0, Lcom/fsck/k9/controller/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 245
    iput-object p2, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    .line 246
    iput-boolean p5, v0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    .line 247
    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 249
    .end local v0    # "command":Lcom/fsck/k9/controller/MessagingController$Command;
    :catch_0
    move-exception v2

    .line 250
    .local v2, "ie":Ljava/lang/InterruptedException;
    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 251
    move-object v1, v2

    move v4, v3

    .line 252
    .end local v3    # "retries":I
    .restart local v4    # "retries":I
    goto :goto_0

    .line 254
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .end local v4    # "retries":I
    .restart local v3    # "retries":I
    :cond_0
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private queueExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueExpunge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/controller/MessagingController$15;

    invoke-direct {v2, p0, p2, p1}, Lcom/fsck/k9/controller/MessagingController$15;-><init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 2006
    return-void
.end method

.method private queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .param p4, "isCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1846
    .local p5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2, p3, p4, p5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    move-result-object v0

    .line 1847
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 1848
    return-void
.end method

.method private queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .param p4, "isCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1852
    .local p5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1853
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/controller/MessagingController;->queueMoveOrCopy(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 1858
    :goto_0
    return-void

    .line 1855
    :cond_1
    invoke-static {p2, p3, p4, p6}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    move-result-object v0

    .line 1856
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    goto :goto_0
.end method

.method private queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    .prologue
    .line 1627
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    .line 1628
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mailstore/LocalStore;->addPendingCommand(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    return-void

    .line 1629
    .end local v1    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to enqueue pending command"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V
    .locals 9
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "newState"    # Z
    .param p4, "flag"    # Lcom/fsck/k9/mail/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/fsck/k9/mail/Flag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1951
    .local p5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueSetFlag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$14;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController$14;-><init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v7, v8, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 1959
    return-void
.end method

.method private refreshLocalMessageFlags(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 17
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p5, "progress"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "todo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1540
    .local p4, "syncFlagMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1541
    .local v3, "folder":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->supportsFetchingFlags()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1542
    const-string v13, "SYNC: About to sync flags for %d remote messages for folder %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v13, v14}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1544
    new-instance v4, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v4}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1545
    .local v4, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v13, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v4, v13}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1547
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 1548
    .local v12, "undeletedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/Message;

    .line 1549
    .local v7, "message":Lcom/fsck/k9/mail/Message;
    sget-object v14, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v7, v14}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1550
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1554
    .end local v7    # "message":Lcom/fsck/k9/mail/Message;
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4, v13}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1555
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fsck/k9/mail/Message;

    .line 1556
    .local v10, "remoteMessage":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v6

    .line 1557
    .local v6, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/fsck/k9/controller/MessagingController;->syncFlags(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Message;)Z

    move-result v8

    .line 1558
    .local v8, "messageChanged":Z
    if-eqz v8, :cond_6

    .line 1559
    const/4 v11, 0x0

    .line 1560
    .local v11, "shouldBeNotifiedOf":Z
    sget-object v14, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v6, v14}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/fsck/k9/controller/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/mailstore/LocalMessage;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1561
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/controller/MessagingListener;

    .line 1562
    .local v5, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-interface {v5, v0, v3, v6}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_1

    .line 1565
    .end local v5    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6}, Lcom/fsck/k9/controller/MessagingController;->shouldNotifyForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1566
    const/4 v11, 0x1

    .line 1571
    :cond_5
    if-nez v11, :cond_6

    .line 1572
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v9

    .line 1573
    .local v9, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    .line 1576
    .end local v9    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .end local v11    # "shouldBeNotifiedOf":Z
    :cond_6
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/controller/MessagingListener;

    .line 1578
    .restart local v5    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-interface {v5, v0, v3, v15, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_2

    .line 1582
    .end local v4    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v5    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v6    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v8    # "messageChanged":Z
    .end local v10    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .end local v12    # "undeletedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_7
    return-void
.end method

.method private removeFlagForThreadsFromCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v0

    .line 337
    .local v0, "cache":Lcom/fsck/k9/cache/EmailProviderCache;
    invoke-static {p3}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/cache/EmailProviderCache;->removeValueForThreads(Ljava/util/List;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private removeFlagFromCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v0

    .line 320
    .local v0, "cache":Lcom/fsck/k9/cache/EmailProviderCache;
    invoke-static {p3}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/cache/EmailProviderCache;->removeValueForMessages(Ljava/util/List;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private runInBackground()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 188
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 189
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/fsck/k9/controller/MessagingController;->stopped:Z

    if-nez v3, :cond_2

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "commandDescription":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingController$Command;

    .line 194
    .local v0, "command":Lcom/fsck/k9/controller/MessagingController$Command;
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    .line 197
    const-string v4, "Running command \'%s\', seq = %s (%s priority)"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x1

    iget v6, v0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    .line 199
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-boolean v3, v0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    if-eqz v3, :cond_1

    const-string v3, "foreground"

    :goto_1
    aput-object v3, v5, v6

    .line 197
    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :try_start_1
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Lcom/fsck/k9/controller/UnavailableAccountException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    :goto_2
    :try_start_2
    const-string v3, " Command \'%s\' completed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 222
    .end local v0    # "command":Lcom/fsck/k9/controller/MessagingController$Command;
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error running command \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "command":Lcom/fsck/k9/controller/MessagingController$Command;
    :cond_1
    :try_start_3
    const-string v3, "background"

    goto :goto_1

    .line 204
    :catch_1
    move-exception v2

    .line 206
    .local v2, "e":Lcom/fsck/k9/controller/UnavailableAccountException;
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$2;

    invoke-direct {v3, p0, v0}, Lcom/fsck/k9/controller/MessagingController$2;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingController$Command;)V

    .line 217
    invoke-virtual {v3}, Lcom/fsck/k9/controller/MessagingController$2;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 226
    .end local v0    # "command":Lcom/fsck/k9/controller/MessagingController$Command;
    .end local v1    # "commandDescription":Ljava/lang/String;
    .end local v2    # "e":Lcom/fsck/k9/controller/UnavailableAccountException;
    :cond_2
    return-void
.end method

.method private setFlagForThreadsInCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p4, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p2, "threadRootIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v0

    .line 328
    .local v0, "cache":Lcom/fsck/k9/cache/EmailProviderCache;
    invoke-static {p3}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "columnName":Ljava/lang/String;
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, p2, v1, v2}, Lcom/fsck/k9/cache/EmailProviderCache;->setValueForThreads(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void

    .line 329
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setFlagInCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p4, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v0

    .line 311
    .local v0, "cache":Lcom/fsck/k9/cache/EmailProviderCache;
    invoke-static {p3}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "columnName":Ljava/lang/String;
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, p2, v1, v2}, Lcom/fsck/k9/cache/EmailProviderCache;->setValueForMessages(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void

    .line 312
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setFlagSynchronous(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;ZZ)V
    .locals 17
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p4, "newState"    # Z
    .param p5, "threadedList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 2110
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 2119
    .local v14, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    if-eqz p5, :cond_2

    .line 2120
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v14, v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalStore;->setFlagForThreads(Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 2121
    invoke-direct/range {p0 .. p3}, Lcom/fsck/k9/controller/MessagingController;->removeFlagForThreadsFromCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2133
    :goto_0
    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v14, v0, v1}, Lcom/fsck/k9/mailstore/LocalStore;->getFoldersAndUids(Ljava/util/List;Z)Ljava/util/Map;
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v11

    .line 2140
    .local v11, "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2141
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2144
    .local v5, "folderName":Ljava/lang/String;
    invoke-virtual {v14, v5}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v13

    .line 2146
    .local v13, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_3
    invoke-virtual {v13}, Lcom/fsck/k9/mailstore/LocalFolder;->getUnreadMessageCount()I

    move-result v15

    .line 2147
    .local v15, "unreadMessageCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/controller/MessagingListener;

    .line 2148
    .local v12, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-interface {v12, v0, v5, v15}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2150
    .end local v12    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v15    # "unreadMessageCount":I
    :catch_0
    move-exception v9

    .line 2151
    .local v9, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Couldn\'t get unread count for folder: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v9, v3, v4}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2157
    .end local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_0
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V

    .line 2158
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto :goto_1

    .line 2111
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v14    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_1
    move-exception v9

    .line 2112
    .restart local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Couldn\'t get LocalStore instance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2160
    .end local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_1
    :goto_3
    return-void

    .line 2123
    .restart local v14    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_2
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v14, v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalStore;->setFlag(Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 2124
    invoke-direct/range {p0 .. p3}, Lcom/fsck/k9/controller/MessagingController;->removeFlagFromCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;)V
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2126
    :catch_2
    move-exception v9

    .line 2127
    .restart local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Couldn\'t set flags in local database"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2134
    .end local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catch_3
    move-exception v9

    .line 2135
    .restart local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Couldn\'t get folder name and UID of messages"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private shouldImportMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "earliestDate"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1322
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isSearchByDateCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p3}, Lcom/fsck/k9/mail/Message;->olderThan(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    const-string v2, "Message %s is older than %s, hence not saving"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object p3, v3, v1

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private shouldNotifyForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;)Z
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 3711
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 3712
    const/4 v7, 0x0

    .line 3780
    :goto_0
    return v7

    .line 3717
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p3, v7}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3718
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 3721
    :cond_2
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v0

    .line 3722
    .local v0, "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getFolderNotifyNewMailMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v1

    .line 3723
    .local v1, "aNotifyMode":Lcom/fsck/k9/Account$FolderMode;
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v2

    .line 3724
    .local v2, "fDisplayClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getNotifyClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v3

    .line 3726
    .local v3, "fNotifyClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    invoke-direct {p0, v0, v2}, Lcom/fsck/k9/controller/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3728
    const/4 v7, 0x0

    goto :goto_0

    .line 3731
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/fsck/k9/controller/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3733
    const/4 v7, 0x0

    goto :goto_0

    .line 3738
    :cond_4
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pop3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/util/Date;

    .line 3739
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLatestOldMessageSeenTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v7}, Lcom/fsck/k9/mail/Message;->olderThan(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3740
    const/4 v7, 0x0

    goto :goto_0

    .line 3745
    :cond_5
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v4

    .line 3746
    .local v4, "folder":Lcom/fsck/k9/mail/Folder;
    if-eqz v4, :cond_7

    .line 3747
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3748
    .local v5, "folderName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3749
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3750
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3751
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3752
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3753
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3757
    .end local v5    # "folderName":Ljava/lang/String;
    :cond_7
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getLastUid()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 3759
    :try_start_0
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3760
    .local v6, "messageUid":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getLastUid()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_8

    .line 3761
    const-string v7, "Message uid is %s, max message uid is %s. Skipping notification."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    .line 3762
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getLastUid()Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 3761
    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3763
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3765
    .end local v6    # "messageUid":Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 3772
    :cond_8
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isNotifySelfNewMail()Z

    move-result v7

    if-nez v7, :cond_9

    .line 3773
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3776
    :cond_9
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isNotifyContactsMailOnly()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController;->contacts:Lcom/fsck/k9/helper/Contacts;

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/helper/Contacts;->isAnyInContacts([Lcom/fsck/k9/mail/Address;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 3777
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3780
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private showFetchingMailNotificationIfNecessary(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 3617
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3618
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/NotificationController;->showFetchingMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V

    .line 3620
    :cond_0
    return-void
.end method

.method private showSendingNotificationIfNecessary(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 2501
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NotificationController;->showSendingNotification(Lcom/fsck/k9/Account;)V

    .line 2504
    :cond_0
    return-void
.end method

.method private suppressMessages(Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v0

    .line 291
    .local v0, "cache":Lcom/fsck/k9/cache/EmailProviderCache;
    invoke-virtual {v0, p2}, Lcom/fsck/k9/cache/EmailProviderCache;->hideMessages(Ljava/util/List;)V

    .line 292
    return-void
.end method

.method private syncFlags(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Message;)Z
    .locals 5
    .param p1, "localMessage"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p2, "remoteMessage"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1585
    const/4 v1, 0x0

    .line 1586
    .local v1, "messageChanged":Z
    if-eqz p1, :cond_0

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1587
    :cond_0
    const/4 v2, 0x0

    .line 1602
    :goto_0
    return v2

    .line 1589
    :cond_1
    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v2}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1590
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->syncRemoteDeletions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1591
    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1592
    const/4 v1, 0x1

    :cond_2
    move v2, v1

    .line 1602
    goto :goto_0

    .line 1595
    :cond_3
    sget-object v2, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Flag;

    .line 1596
    .local v0, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    invoke-virtual {p1, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1597
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1598
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private synchronizeFolder(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;ZJLcom/fsck/k9/controller/MessagingListener;)V
    .locals 10
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "ignoreLastCheckedTime"    # Z
    .param p4, "accountInterval"    # J
    .param p6, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3571
    const-string v0, "Folder %s was last synced @ %tc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3573
    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3574
    const-string v0, "Not syncing folder %s, previously synced @ %tc which would be too recent for the account period"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3575
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3574
    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3614
    :goto_0
    return-void

    .line 3579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$37;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/controller/MessagingController$37;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;ZJLcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v0, v9, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private unsuppressMessages(Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v0

    .line 296
    .local v0, "cache":Lcom/fsck/k9/cache/EmailProviderCache;
    invoke-virtual {v0, p2}, Lcom/fsck/k9/cache/EmailProviderCache;->unhideMessages(Ljava/util/List;)V

    .line 297
    return-void
.end method

.method private updateMoreMessages(Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/Date;I)V
    .locals 3
    .param p1, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p2, "localFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "earliestDate"    # Ljava/util/Date;
    .param p4, "remoteStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    .line 995
    sget-object v2, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->FALSE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    invoke-virtual {p2, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->setMoreMessages(Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;)V

    .line 1002
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-virtual {p1, p4, p3}, Lcom/fsck/k9/mail/Folder;->areMoreMessagesAvailable(ILjava/util/Date;)Z

    move-result v0

    .line 999
    .local v0, "moreMessagesAvailable":Z
    if-eqz v0, :cond_1

    sget-object v1, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->TRUE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 1000
    .local v1, "newMoreMessages":Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    :goto_1
    invoke-virtual {p2, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->setMoreMessages(Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;)V

    goto :goto_0

    .line 999
    .end local v1    # "newMoreMessages":Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    :cond_1
    sget-object v1, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->FALSE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    goto :goto_1
.end method

.method private verifyOrCreateRemoteSpecialFolder(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)Z
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1019
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1021
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1022
    :cond_0
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1023
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {p3, v3}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1024
    invoke-virtual {p0, p4}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 1025
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v0, p1, p2, v1, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_0

    .line 1028
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_1
    const-string v3, "Done synchronizing folder %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v3, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->refreshListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 260
    return-void
.end method

.method public cancelNotificationForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    .line 4073
    return-void
.end method

.method public cancelNotificationsForAccount(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NotificationController;->clearNewMailNotifications(Lcom/fsck/k9/Account;)V

    .line 4069
    return-void
.end method

.method public checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/controller/MessagingListener;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "ignoreLastCheckedTime"    # Z
    .param p4, "useManualWakeLock"    # Z
    .param p5, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3425
    const/4 v11, 0x0

    .line 3426
    .local v11, "twakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    if-eqz p4, :cond_0

    .line 3427
    invoke-static {p1}, Lcom/fsck/k9/mail/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;

    move-result-object v10

    .line 3429
    .local v10, "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    const/4 v2, 0x1

    const-string v3, "K9 MessagingController.checkMail"

    invoke-virtual {v10, v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager;->newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v11

    .line 3430
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->setReferenceCounted(Z)V

    .line 3431
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v11, v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 3433
    .end local v10    # "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    :cond_0
    move-object v8, v11

    .line 3435
    .local v8, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 3436
    .local v9, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v9, p1, p2}, Lcom/fsck/k9/controller/MessagingListener;->checkMailStarted(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 3438
    .end local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_1
    const-string v12, "checkMail"

    new-instance v2, Lcom/fsck/k9/controller/MessagingController$35;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController$35;-><init>(Lcom/fsck/k9/controller/MessagingController;Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)V

    move-object/from16 v0, p5

    invoke-direct {p0, v12, v0, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3480
    return-void
.end method

.method public clear(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "ml"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$39;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$39;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3677
    return-void
.end method

.method public clearAllPending(Lcom/fsck/k9/Account;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v4, 0x0

    .line 2261
    :try_start_0
    const-string v2, "Clearing pending commands!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2262
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v0

    .line 2263
    .local v0, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->removePendingCommands()V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2267
    .end local v0    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :goto_0
    return-void

    .line 2264
    :catch_0
    move-exception v1

    .line 2265
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "Unable to clear pending command"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearCertificateErrorNotifications(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "direction"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .prologue
    .line 4076
    sget-object v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 4077
    .local v0, "incoming":Z
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v1, p1, v0}, Lcom/fsck/k9/notification/NotificationController;->clearCertificateErrorNotifications(Lcom/fsck/k9/Account;Z)V

    .line 4078
    return-void

    .line 4076
    .end local v0    # "incoming":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearFolder(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/ActivityListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fsck/k9/activity/ActivityListener;

    .prologue
    .line 3326
    const-string v0, "clearFolder"

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$34;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController$34;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/ActivityListener;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3332
    return-void
.end method

.method protected clearFolderSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3336
    const/4 v1, 0x0

    .line 3338
    .local v1, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 3339
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 3340
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->clearAllMessages()V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3347
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 3350
    :goto_0
    invoke-virtual {p0, p1, v4, p3}, Lcom/fsck/k9/controller/MessagingController;->listFoldersSynchronous(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    .line 3351
    return-void

    .line 3341
    :catch_0
    move-exception v0

    .line 3342
    .local v0, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :try_start_1
    const-string v2, "Failed to clear folder because storage is not available - trying again later."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3343
    new-instance v2, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v2, v0}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3347
    .end local v0    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v2

    .line 3344
    :catch_1
    move-exception v0

    .line 3345
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "clearFolder failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3347
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0
.end method

.method public compact(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "ml"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compact:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$38;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3649
    return-void
.end method

.method public copyMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/activity/MessageReference;
    .param p4, "destFolder"    # Ljava/lang/String;

    .prologue
    .line 2954
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/fsck/k9/controller/MessagingController;->copyMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2955
    return-void
.end method

.method public copyMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "srcAccount"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p4, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2917
    .local p3, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$27;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/fsck/k9/controller/MessagingController$27;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessageGroup(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 2928
    return-void
.end method

.method public copyMessagesInThread(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "srcAccount"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p4, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2932
    .local p3, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$28;

    invoke-direct {v0, p0, p2, p4}, Lcom/fsck/k9/controller/MessagingController$28;-><init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessageGroup(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 2949
    return-void
.end method

.method public debugClearMessagesLocally(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3151
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "method must only be used in debug build!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public deleteAccount(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NotificationController;->clearNewMailNotifications(Lcom/fsck/k9/Account;)V

    .line 3785
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingMessagingListener:Lcom/fsck/k9/controller/MemorizingMessagingListener;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->removeAccount(Lcom/fsck/k9/Account;)V

    .line 3786
    return-void
.end method

.method public deleteDraft(Lcom/fsck/k9/Account;J)V
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "id"    # J

    .prologue
    .line 3060
    const/4 v0, 0x0

    .line 3062
    .local v0, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    .line 3063
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v0

    .line 3064
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 3065
    invoke-virtual {v0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessageUidById(J)Ljava/lang/String;

    move-result-object v4

    .line 3066
    .local v4, "uid":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3067
    new-instance v3, Lcom/fsck/k9/activity/MessageReference;

    .line 3068
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    .line 3069
    .local v3, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/fsck/k9/controller/MessagingController;->deleteMessage(Lcom/fsck/k9/activity/MessageReference;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3074
    .end local v3    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 3076
    .end local v1    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v4    # "uid":Ljava/lang/String;
    :goto_0
    return-void

    .line 3071
    :catch_0
    move-exception v2

    .line 3072
    .local v2, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    const-string v5, "Error deleting draft"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3074
    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .end local v2    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v5

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v5
.end method

.method public deleteMessage(Lcom/fsck/k9/activity/MessageReference;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3126
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fsck/k9/controller/MessagingController;->deleteMessages(Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 3127
    return-void
.end method

.method public deleteMessages(Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3130
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$31;

    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/controller/MessagingController$31;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 3146
    return-void
.end method

.method public deleteThreads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3079
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$30;

    invoke-direct {v0, p0}, Lcom/fsck/k9/controller/MessagingController$30;-><init>(Lcom/fsck/k9/controller/MessagingController;)V

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 3093
    return-void
.end method

.method public emptyTrash(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3288
    const-string v0, "emptyTrash"

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$33;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/controller/MessagingController$33;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3323
    return-void
.end method

.method public expunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 3051
    const-string v0, "expunge"

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/controller/MessagingController$29;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$29;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3057
    return-void
.end method

.method public getAccountStats(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$22;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/fsck/k9/controller/MessagingController$22;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2737
    return-void
.end method

.method public getCheckMailListener()Lcom/fsck/k9/controller/MessagingListener;
    .locals 1

    .prologue
    .line 3878
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

    return-object v0
.end method

.method public getFolderUnreadMessageCount(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2820
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController$24;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 2836
    .local v0, "unreadRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderUnread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3, v0}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 2837
    return-void
.end method

.method public getId(Lcom/fsck/k9/mail/Message;)J
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 3830
    instance-of v2, p1, Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v2, :cond_0

    .line 3831
    check-cast p1, Lcom/fsck/k9/mailstore/LocalMessage;

    .end local p1    # "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v0

    .line 3837
    .local v0, "id":J
    :goto_0
    return-wide v0

    .line 3833
    .end local v0    # "id":J
    .restart local p1    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    const-string v2, "MessagingController.getId() called without a LocalMessage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3834
    const-wide/16 v0, -0x1

    .restart local v0    # "id":J
    goto :goto_0
.end method

.method public getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;
    .locals 2
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/Set;

    .line 284
    :goto_0
    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 283
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/controller/MessagingListener;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPushers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fsck/k9/mail/Pusher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAccountStats(Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "searchAccount"    # Lcom/fsck/k9/search/SearchAccount;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$23;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2748
    return-void
.end method

.method public getSearchAccountStatsSynchronous(Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)Lcom/fsck/k9/AccountStats;
    .locals 27
    .param p1, "searchAccount"    # Lcom/fsck/k9/search/SearchAccount;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2753
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v18

    .line 2754
    .local v18, "preferences":Lcom/fsck/k9/Preferences;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v21

    .line 2757
    .local v21, "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/search/LocalSearch;->getAccountUuids()[Ljava/lang/String;

    move-result-object v11

    .line 2759
    .local v11, "accountUuids":[Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/search/LocalSearch;->searchAllAccounts()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2760
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v12

    .line 2769
    .local v12, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2771
    .local v3, "cr":Landroid/content/ContentResolver;
    const/16 v23, 0x0

    .line 2772
    .local v23, "unreadMessageCount":I
    const/4 v15, 0x0

    .line 2774
    .local v15, "flaggedMessageCount":I
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v24, "unread_count"

    aput-object v24, v5, v8

    const/4 v8, 0x1

    const-string v24, "flagged_count"

    aput-object v24, v5, v8

    .line 2779
    .local v5, "projection":[Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_1
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/Account;

    .line 2780
    .local v9, "account":Lcom/fsck/k9/Account;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 2781
    .local v19, "query":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2782
    .local v20, "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v13

    .line 2783
    .local v13, "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v9, v13, v0, v1}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClause(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 2785
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2786
    .local v6, "selection":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 2788
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-object v8, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "account/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2789
    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/stats"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2788
    move-object/from16 v0, v25

    invoke-static {v8, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2792
    .local v4, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2794
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2795
    const/4 v8, 0x0

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int v23, v23, v8

    .line 2796
    const/4 v8, 0x1

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/2addr v15, v8

    .line 2799
    :cond_2
    if-eqz v14, :cond_1

    .line 2800
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2762
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "account":Lcom/fsck/k9/Account;
    .end local v12    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v13    # "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "flaggedMessageCount":I
    .end local v19    # "query":Ljava/lang/StringBuilder;
    .end local v20    # "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "unreadMessageCount":I
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    array-length v8, v11

    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2763
    .restart local v12    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    array-length v0, v11

    move/from16 v17, v0

    .local v17, "len":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 2764
    aget-object v10, v11, v16

    .line 2765
    .local v10, "accountUuid":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v8

    move/from16 v0, v16

    invoke-interface {v12, v0, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2763
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2799
    .end local v10    # "accountUuid":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "len":I
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "account":Lcom/fsck/k9/Account;
    .restart local v13    # "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "flaggedMessageCount":I
    .restart local v19    # "query":Ljava/lang/StringBuilder;
    .restart local v20    # "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "unreadMessageCount":I
    :catchall_0
    move-exception v8

    if-eqz v14, :cond_4

    .line 2800
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8

    .line 2806
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "account":Lcom/fsck/k9/Account;
    .end local v13    # "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v19    # "query":Ljava/lang/StringBuilder;
    .end local v20    # "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v22, Lcom/fsck/k9/AccountStats;

    invoke-direct/range {v22 .. v22}, Lcom/fsck/k9/AccountStats;-><init>()V

    .line 2807
    .local v22, "stats":Lcom/fsck/k9/AccountStats;
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 2808
    move-object/from16 v0, v22

    iput v15, v0, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    .line 2811
    if-eqz p2, :cond_6

    .line 2812
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V

    .line 2815
    :cond_6
    return-object v22
.end method

.method handleAuthenticationFailure(Lcom/fsck/k9/Account;Z)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "incoming"    # Z

    .prologue
    .line 988
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/NotificationController;->showAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V

    .line 989
    return-void
.end method

.method public isCopyCapable(Lcom/fsck/k9/Account;)Z
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v3, 0x0

    .line 2862
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v0

    .line 2863
    .local v0, "localStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v2

    .line 2864
    .local v2, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Store;->isCopyCapable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Store;->isCopyCapable()Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 2867
    .end local v0    # "localStore":Lcom/fsck/k9/mail/Store;
    .end local v2    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_0
    :goto_0
    return v3

    .line 2865
    :catch_0
    move-exception v1

    .line 2866
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v4, "Exception while ascertaining copy capability"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isCopyCapable(Lcom/fsck/k9/activity/MessageReference;)Z
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 2845
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v0

    return v0
.end method

.method public isMoveCapable(Lcom/fsck/k9/Account;)Z
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v3, 0x0

    .line 2850
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v0

    .line 2851
    .local v0, "localStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v2

    .line 2852
    .local v2, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 2856
    .end local v0    # "localStore":Lcom/fsck/k9/mail/Store;
    .end local v2    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_0
    :goto_0
    return v3

    .line 2853
    :catch_0
    move-exception v1

    .line 2855
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v4, "Exception while ascertaining move capability"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isMoveCapable(Lcom/fsck/k9/activity/MessageReference;)Z
    .locals 2
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 2841
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K9LOCAL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "refreshRemote"    # Z
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method public listFoldersSynchronous(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "refreshRemote"    # Z
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    const/4 v7, 0x0

    .line 369
    invoke-virtual {p0, p3}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 370
    .local v1, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v1, p1}, Lcom/fsck/k9/controller/MessagingListener;->listFoldersStarted(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 372
    .end local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_0
    const/4 v3, 0x0

    .line 373
    .local v3, "localFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 374
    const-string v5, "not listing folders of unavailable account"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_1
    invoke-virtual {p0, p3}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 405
    .restart local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v1, p1}, Lcom/fsck/k9/controller/MessagingListener;->listFoldersFinished(Lcom/fsck/k9/Account;)V

    goto :goto_1

    .line 377
    .end local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v4

    .line 378
    .local v4, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v3

    .line 380
    if-nez p2, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 381
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/controller/MessagingController;->doRefreshRemote(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    if-eqz v3, :cond_8

    .line 397
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Folder;

    .line 398
    .local v2, "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2

    .line 385
    .end local v2    # "localFolder":Lcom/fsck/k9/mail/Folder;
    :cond_4
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 386
    .restart local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v1, p1, v3}, Lcom/fsck/k9/controller/MessagingListener;->listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 388
    .end local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 390
    .restart local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_7

    .line 397
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Folder;

    .line 398
    .restart local v2    # "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_5

    .line 396
    .end local v2    # "localFolder":Lcom/fsck/k9/mail/Folder;
    .restart local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_5
    if-eqz v3, :cond_1

    .line 397
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Folder;

    .line 398
    .restart local v2    # "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_6

    .line 393
    .end local v2    # "localFolder":Lcom/fsck/k9/mail/Folder;
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    if-eqz v3, :cond_8

    .line 397
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Folder;

    .line 398
    .restart local v2    # "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_7

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "localFolder":Lcom/fsck/k9/mail/Folder;
    :cond_7
    throw v5

    .line 407
    :cond_8
    return-void
.end method

.method public loadAttachment(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p3, "part"    # Lcom/fsck/k9/mail/Part;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2391
    const-string v6, "loadAttachment"

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$20;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$20;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v6, p4, v0}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 2436
    return-void
.end method

.method public loadMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2357
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v2

    .line 2358
    .local v2, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v2, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 2359
    .local v1, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 2361
    invoke-virtual {v1, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v3

    .line 2362
    .local v3, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 2363
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message not found: folder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2366
    :cond_1
    new-instance v0, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v0}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 2367
    .local v0, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2368
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v0, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 2369
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    .line 2371
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    .line 2372
    invoke-direct {p0, p1, v3}, Lcom/fsck/k9/controller/MessagingController;->markMessageAsReadOnView(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 2374
    return-object v3
.end method

.method public loadMessageRemote(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2282
    const-string v6, "loadMessageRemote"

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$19;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v6, p4, v0}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 2288
    return-void
.end method

.method public loadMessageRemotePartial(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2271
    const-string v6, "loadMessageRemotePartial"

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$18;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$18;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v6, p4, v0}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 2277
    return-void
.end method

.method public loadMoreMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 691
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    .line 692
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v0

    .line 693
    .local v0, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getVisibleLimit()I

    move-result v3

    if-lez v3, :cond_0

    .line 694
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getVisibleLimit()I

    move-result v3

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->setVisibleLimit(I)V

    .line 696
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    return-void

    .line 697
    .end local v0    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v1    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_0
    move-exception v2

    .line 698
    .local v2, "me":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to set visible limit on folder"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public loadSearchResults(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 633
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 663
    return-void
.end method

.method public markAllMessagesRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 2072
    const-string v1, "Marking all messages in %s:%s as read"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    invoke-static {p2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->create(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    move-result-object v0

    .line 2075
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 2076
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    .line 2077
    return-void
.end method

.method public messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p4, "flagSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 4001
    const-string v0, "Got new pushed email messages for account %s, folder %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 4002
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4001
    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4004
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4005
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push messageArrived of account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4006
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$41;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController$41;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;ZLjava/util/concurrent/CountDownLatch;)V

    .line 4005
    invoke-direct {p0, v8, v9, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 4053
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4058
    :goto_0
    const-string v0, "MessagingController.messagesArrivedLatch released"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4059
    return-void

    .line 4054
    :catch_0
    move-exception v7

    .line 4055
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Interrupted while awaiting latch release"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/activity/MessageReference;
    .param p4, "destFolder"    # Ljava/lang/String;

    .prologue
    .line 2912
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/fsck/k9/controller/MessagingController;->moveMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2913
    return-void
.end method

.method public moveMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "srcAccount"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p4, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2873
    .local p3, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$25;

    invoke-direct {v0, p0, p2, p4}, Lcom/fsck/k9/controller/MessagingController$25;-><init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessageGroup(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 2886
    return-void
.end method

.method public moveMessagesInThread(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "srcAccount"    # Lcom/fsck/k9/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p4, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2890
    .local p3, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$26;

    invoke-direct {v0, p0, p2, p4}, Lcom/fsck/k9/controller/MessagingController$26;-><init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessageGroup(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 2908
    return-void
.end method

.method public notifyUserIfCertificateProblem(Lcom/fsck/k9/Account;Ljava/lang/Exception;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "incoming"    # Z

    .prologue
    .line 4081
    instance-of v1, p2, Lcom/fsck/k9/mail/CertificateValidationException;

    if-nez v1, :cond_1

    .line 4091
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 4085
    check-cast v0, Lcom/fsck/k9/mail/CertificateValidationException;

    .line 4086
    .local v0, "cve":Lcom/fsck/k9/mail/CertificateValidationException;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/CertificateValidationException;->needsUserAttention()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4090
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v1, p1, p3}, Lcom/fsck/k9/notification/NotificationController;->showCertificateErrorNotification(Lcom/fsck/k9/Account;Z)V

    goto :goto_0
.end method

.method processPendingAppend(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;Lcom/fsck/k9/Account;)V
    .locals 20
    .param p1, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1726
    const/4 v12, 0x0

    .line 1727
    .local v12, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v6, 0x0

    .line 1730
    .local v6, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->folder:Ljava/lang/String;

    .line 1731
    .local v2, "folder":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->uid:Ljava/lang/String;

    .line 1733
    .local v15, "uid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v8

    .line 1734
    .local v8, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v8, v2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v6

    .line 1735
    invoke-virtual {v6, v15}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1737
    .local v7, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    if-nez v7, :cond_0

    .line 1839
    invoke-static {v12}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1840
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1842
    :goto_0
    return-void

    .line 1741
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v14

    .line 1742
    .local v14, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v14, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v12

    .line 1743
    invoke-virtual {v12}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1744
    sget-object v16, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    if-nez v16, :cond_1

    .line 1839
    invoke-static {v12}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1840
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 1748
    :cond_1
    const/16 v16, 0x0

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 1749
    invoke-virtual {v12}, Lcom/fsck/k9/mail/Folder;->getMode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    if-eqz v16, :cond_2

    .line 1839
    invoke-static {v12}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1840
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 1753
    :cond_2
    const/4 v13, 0x0

    .line 1754
    .local v13, "remoteMessage":Lcom/fsck/k9/mail/Message;
    :try_start_3
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v16

    const-string v17, "K9LOCAL:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1755
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v13

    .line 1758
    :cond_3
    if-nez v13, :cond_7

    .line 1759
    sget-object v16, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1760
    const-string v16, "Local message with uid %s has flag %s  already set, checking for remote message with same message id"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 1761
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget-object v19, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    aput-object v19, v17, v18

    .line 1760
    invoke-static/range {v16 .. v17}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    invoke-virtual {v12, v7}, Lcom/fsck/k9/mail/Folder;->getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v10

    .line 1763
    .local v10, "rUid":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 1764
    const-string v16, "Local message has flag %s already set, and there is a remote message with uid %s, assuming message was already copied and aborting this copy"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    invoke-static/range {v16 .. v17}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1768
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v9

    .line 1769
    .local v9, "oldUid":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/fsck/k9/mailstore/LocalMessage;->setUid(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    .line 1772
    .local v4, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v2, v9, v1}, Lcom/fsck/k9/controller/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1839
    .end local v2    # "folder":Ljava/lang/String;
    .end local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v7    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v8    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v9    # "oldUid":Ljava/lang/String;
    .end local v10    # "rUid":Ljava/lang/String;
    .end local v13    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .end local v14    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .end local v15    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v16

    invoke-static {v12}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1840
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v16

    .line 1839
    .restart local v2    # "folder":Ljava/lang/String;
    .restart local v7    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .restart local v8    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v9    # "oldUid":Ljava/lang/String;
    .restart local v10    # "rUid":Ljava/lang/String;
    .restart local v13    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .restart local v14    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .restart local v15    # "uid":Ljava/lang/String;
    :cond_4
    invoke-static {v12}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1840
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0

    .line 1776
    .end local v9    # "oldUid":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v16, "No remote message with message-id found, proceeding with append"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1784
    .end local v10    # "rUid":Ljava/lang/String;
    :cond_6
    new-instance v3, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v3}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1785
    .local v3, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v16, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1786
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v3, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1787
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v9

    .line 1788
    .restart local v9    # "oldUid":Ljava/lang/String;
    sget-object v16, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1789
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/Folder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 1791
    invoke-virtual {v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    .line 1793
    .restart local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v2, v9, v1}, Lcom/fsck/k9/controller/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1802
    .end local v3    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v9    # "oldUid":Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v3}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1803
    .restart local v3    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v16, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1804
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v3, v1}, Lcom/fsck/k9/mail/Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1805
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getInternalDate()Ljava/util/Date;

    move-result-object v5

    .line 1806
    .local v5, "localDate":Ljava/util/Date;
    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v11

    .line 1807
    .local v11, "remoteDate":Ljava/util/Date;
    if-eqz v11, :cond_9

    invoke-virtual {v11, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v16

    if-lez v16, :cond_9

    .line 1813
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1839
    .end local v5    # "localDate":Ljava/util/Date;
    .end local v11    # "remoteDate":Ljava/util/Date;
    :cond_8
    :goto_3
    invoke-static {v12}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1840
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0

    .line 1818
    .restart local v5    # "localDate":Ljava/util/Date;
    .restart local v11    # "remoteDate":Ljava/util/Date;
    :cond_9
    :try_start_5
    new-instance v3, Lcom/fsck/k9/mail/FetchProfile;

    .end local v3    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    invoke-direct {v3}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1819
    .restart local v3    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v16, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1820
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v3, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 1821
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v9

    .line 1823
    .restart local v9    # "oldUid":Ljava/lang/String;
    sget-object v16, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1825
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/Folder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 1826
    invoke-virtual {v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    .line 1828
    .restart local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v2, v9, v1}, Lcom/fsck/k9/controller/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1830
    .end local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_a
    if-eqz v11, :cond_8

    .line 1831
    sget-object v16, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1832
    sget-object v16, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getExpungePolicy()Lcom/fsck/k9/Account$Expunge;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1833
    invoke-virtual {v12}, Lcom/fsck/k9/mail/Folder;->expunge()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method processPendingEmptyTrash(Lcom/fsck/k9/Account;)V
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3264
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v7

    .line 3266
    .local v7, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    .line 3268
    .local v2, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    :try_start_0
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3269
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 3270
    sget-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/Set;Z)V

    .line 3271
    sget-object v0, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getExpungePolicy()Lcom/fsck/k9/Account$Expunge;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3272
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->expunge()V

    .line 3277
    :cond_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController;->synchronizeFolder(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;ZJLcom/fsck/k9/controller/MessagingListener;)V

    .line 3278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->compact(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3283
    :cond_1
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 3285
    return-void

    .line 3283
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v0
.end method

.method processPendingExpunge(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;Lcom/fsck/k9/Account;)V
    .locals 6
    .param p1, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2009
    iget-object v0, p1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;->folder:Ljava/lang/String;

    .line 2011
    .local v0, "folder":Ljava/lang/String;
    const-string v3, "processPendingExpunge: folder = %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2013
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v2

    .line 2014
    .local v2, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    .line 2016
    .local v1, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    :try_start_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 2027
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2029
    :goto_0
    return-void

    .line 2019
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 2020
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2027
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 2023
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->expunge()V

    .line 2025
    const-string v3, "processPendingExpunge: complete for folder = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2027
    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v3
.end method

.method processPendingMarkAllAsRead(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;Lcom/fsck/k9/Account;)V
    .locals 13
    .param p1, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2032
    iget-object v1, p1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->folder:Ljava/lang/String;

    .line 2033
    .local v1, "folder":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2034
    .local v7, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v3, 0x0

    .line 2036
    .local v3, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v4

    .line 2037
    .local v4, "localStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v4, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    move-object v3, v0

    .line 2038
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 2039
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)Ljava/util/List;

    move-result-object v6

    .line 2040
    .local v6, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    .line 2041
    .local v5, "message":Lcom/fsck/k9/mail/Message;
    sget-object v11, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v5, v11}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2042
    sget-object v11, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2063
    .end local v4    # "localStore":Lcom/fsck/k9/mail/Store;
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    .end local v6    # "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :catch_0
    move-exception v9

    .line 2064
    .local v9, "uoe":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    const-string v10, "Could not mark all server-side as read because store doesn\'t support operation"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2066
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2067
    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2069
    .end local v9    # "uoe":Ljava/lang/UnsupportedOperationException;
    :goto_1
    return-void

    .line 2046
    .restart local v4    # "localStore":Lcom/fsck/k9/mail/Store;
    .restart local v6    # "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    .line 2047
    .local v2, "l":Lcom/fsck/k9/controller/MessagingListener;
    const/4 v11, 0x0

    invoke-interface {v2, p2, v1, v11}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2066
    .end local v2    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v4    # "localStore":Lcom/fsck/k9/mail/Store;
    .end local v6    # "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :catchall_0
    move-exception v10

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2067
    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v10

    .line 2050
    .restart local v4    # "localStore":Lcom/fsck/k9/mail/Store;
    .restart local v6    # "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v8

    .line 2051
    .local v8, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v8, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    .line 2053
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Folder;->isFlagSupported(Lcom/fsck/k9/mail/Flag;)Z
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-nez v10, :cond_4

    .line 2066
    :cond_3
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2067
    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_1

    .line 2056
    :cond_4
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 2057
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getMode()I
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    .line 2066
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2067
    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_1

    .line 2061
    :cond_5
    :try_start_5
    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/Set;Z)V

    .line 2062
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->close()V
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2066
    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2067
    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_1
.end method

.method processPendingMoveOrCopy(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;Lcom/fsck/k9/Account;)V
    .locals 25
    .param p1, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1861
    const/4 v14, 0x0

    .line 1862
    .local v14, "remoteSrcFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v13, 0x0

    .line 1865
    .local v13, "remoteDestFolder":Lcom/fsck/k9/mail/Folder;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->srcFolder:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1866
    .local v18, "srcFolder":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->destFolder:Ljava/lang/String;

    .line 1867
    .local v2, "destFolder":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->isCopy:Z

    .line 1869
    .local v5, "isCopy":Z
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v16

    .line 1870
    .local v16, "remoteStore":Lcom/fsck/k9/mail/Store;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v14

    .line 1872
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v10

    .line 1873
    .local v10, "localStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v10, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 1874
    .local v7, "localDestFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1876
    .local v11, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->newUidMap:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->newUidMap:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    .line 1877
    .local v20, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1878
    .local v19, "uid":Ljava/lang/String;
    const-string v22, "K9LOCAL:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1879
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1944
    .end local v2    # "destFolder":Ljava/lang/String;
    .end local v5    # "isCopy":Z
    .end local v7    # "localDestFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v10    # "localStore":Lcom/fsck/k9/mail/Store;
    .end local v11    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v16    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .end local v18    # "srcFolder":Ljava/lang/String;
    .end local v19    # "uid":Ljava/lang/String;
    .end local v20    # "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catchall_0
    move-exception v21

    invoke-static {v14}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1945
    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v21

    .line 1876
    .restart local v2    # "destFolder":Ljava/lang/String;
    .restart local v5    # "isCopy":Z
    .restart local v7    # "localDestFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v10    # "localStore":Lcom/fsck/k9/mail/Store;
    .restart local v11    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v16    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .restart local v18    # "srcFolder":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->uids:Ljava/util/List;

    move-object/from16 v20, v0

    goto :goto_0

    .line 1883
    .restart local v20    # "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1884
    new-instance v21, Lcom/fsck/k9/mail/MessagingException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processingPendingMoveOrCopy: remoteFolder "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " does not exist"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v21 .. v23}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v21

    .line 1887
    :cond_3
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 1888
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->getMode()I

    move-result v21

    if-eqz v21, :cond_4

    .line 1889
    new-instance v21, Lcom/fsck/k9/mail/MessagingException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processingPendingMoveOrCopy: could not open remoteSrcFolder "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " read/write"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v21 .. v23}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v21

    .line 1893
    :cond_4
    const-string v21, "processingPendingMoveOrCopy: source folder = %s, %d messages, destination folder = %s, isCopy = %s"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    const/16 v23, 0x1

    .line 1894
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    aput-object v2, v22, v23

    const/16 v23, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v22, v23

    .line 1893
    invoke-static/range {v21 .. v22}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1896
    const/16 v17, 0x0

    .line 1898
    .local v17, "remoteUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1899
    const-string v21, "processingPendingMoveOrCopy doing special case for deleting message"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1901
    move-object v3, v2

    .line 1902
    .local v3, "destFolderName":Ljava/lang/String;
    const-string v21, "-NONE-"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1903
    const/4 v3, 0x0

    .line 1905
    :cond_5
    invoke-virtual {v14, v11, v3}, Lcom/fsck/k9/mail/Folder;->delete(Ljava/util/List;Ljava/lang/String;)V

    .line 1915
    .end local v3    # "destFolderName":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_6

    sget-object v21, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getExpungePolicy()Lcom/fsck/k9/Account$Expunge;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1916
    const-string v21, "processingPendingMoveOrCopy expunging folder %s:%s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v18, v22, v23

    invoke-static/range {v21 .. v22}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1917
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Folder;->expunge()V

    .line 1924
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->newUidMap:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_a

    .line 1925
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1926
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1927
    .local v15, "remoteSrcUid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1928
    .local v12, "newUid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->newUidMap:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1929
    .local v9, "localDestUid":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 1933
    invoke-virtual {v7, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v8

    .line 1934
    .local v8, "localDestMessage":Lcom/fsck/k9/mail/Message;
    if-eqz v8, :cond_7

    .line 1935
    invoke-virtual {v8, v12}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1936
    check-cast v8, Lcom/fsck/k9/mailstore/LocalMessage;

    .end local v8    # "localDestMessage":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v7, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 1937
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/controller/MessagingListener;

    .line 1938
    .local v6, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p2

    invoke-interface {v6, v0, v2, v9, v12}, Lcom/fsck/k9/controller/MessagingListener;->messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1907
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v9    # "localDestUid":Ljava/lang/String;
    .end local v12    # "newUid":Ljava/lang/String;
    .end local v15    # "remoteSrcUid":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v13

    .line 1909
    if-eqz v5, :cond_9

    .line 1910
    invoke-virtual {v14, v11, v13}, Lcom/fsck/k9/mail/Folder;->copyMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    move-result-object v17

    goto/16 :goto_2

    .line 1912
    :cond_9
    invoke-virtual {v14, v11, v13}, Lcom/fsck/k9/mail/Folder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    goto/16 :goto_2

    .line 1944
    :cond_a
    invoke-static {v14}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1945
    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 1947
    return-void
.end method

.method processPendingSetFlag(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;Lcom/fsck/k9/Account;)V
    .locals 9
    .param p1, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1965
    iget-object v1, p1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->folder:Ljava/lang/String;

    .line 1967
    .local v1, "folder":Ljava/lang/String;
    iget-boolean v3, p1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->newState:Z

    .line 1968
    .local v3, "newState":Z
    iget-object v0, p1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->flag:Lcom/fsck/k9/mail/Flag;

    .line 1970
    .local v0, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v5

    .line 1971
    .local v5, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v5, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v4

    .line 1972
    .local v4, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mail/Folder;->isFlagSupported(Lcom/fsck/k9/mail/Flag;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 1978
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder;->getMode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 1993
    invoke-static {v4}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 1981
    :cond_2
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    iget-object v7, p1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->uids:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1983
    .local v6, "uid":Ljava/lang/String;
    const-string v8, "K9LOCAL:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1984
    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1993
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v6    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v7

    .line 1988
    .restart local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_5

    .line 1993
    invoke-static {v4}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 1991
    :cond_5
    :try_start_3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v4, v2, v7, v3}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1993
    invoke-static {v4}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0
.end method

.method public recreate(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "ml"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$40;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$40;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3705
    return-void
.end method

.method public refreshListener(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingMessagingListener:Lcom/fsck/k9/controller/MemorizingMessagingListener;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->refreshOther(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 266
    :cond_0
    return-void
.end method

.method refreshRemoteSynchronous(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 17
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 420
    const/4 v8, 0x0

    .line 422
    .local v8, "localFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v13

    .line 424
    .local v13, "store":Lcom/fsck/k9/mail/Store;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/fsck/k9/mail/Store;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v12

    .line 426
    .local v12, "remoteFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v9

    .line 427
    .local v9, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 428
    .local v11, "remoteFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 430
    .local v3, "foldersToCreate":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v8

    .line 431
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 432
    .local v7, "localFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Folder;

    .line 433
    .local v5, "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 473
    .end local v3    # "foldersToCreate":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    .end local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    .end local v7    # "localFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v11    # "remoteFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "remoteFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .end local v13    # "store":Lcom/fsck/k9/mail/Store;
    :catch_0
    move-exception v2

    .line 474
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    .line 475
    .local v4, "l":Lcom/fsck/k9/controller/MessagingListener;
    const-string v15, ""

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v15}, Lcom/fsck/k9/controller/MessagingListener;->listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 479
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catchall_0
    move-exception v14

    if-eqz v8, :cond_9

    .line 480
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Folder;

    .line 481
    .restart local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2

    .line 436
    .end local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    .restart local v3    # "foldersToCreate":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    .restart local v7    # "localFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v11    # "remoteFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "remoteFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .restart local v13    # "store":Lcom/fsck/k9/mail/Store;
    :cond_0
    :try_start_2
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fsck/k9/mail/Folder;

    .line 437
    .local v10, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 438
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v5

    .line 439
    .local v5, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v5    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :cond_1
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 443
    .end local v10    # "remoteFolder":Lcom/fsck/k9/mail/Folder;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v14

    invoke-virtual {v9, v3, v14}, Lcom/fsck/k9/mailstore/LocalStore;->createFolders(Ljava/util/List;I)V

    .line 445
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v8

    .line 450
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Folder;

    .line 451
    .local v5, "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "localFolderName":Ljava/lang/String;
    const-string v15, "-NONE-"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 456
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/fsck/k9/mail/Folder;->delete(Z)V

    .line 459
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/fsck/k9/Account;->isSpecialFolder(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 460
    invoke-interface {v11, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 461
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/fsck/k9/mail/Folder;->delete(Z)V

    goto :goto_4

    .line 465
    .end local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    .end local v6    # "localFolderName":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v8

    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    .line 468
    .restart local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v8}, Lcom/fsck/k9/controller/MessagingListener;->listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V

    goto :goto_5

    .line 470
    .end local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    .line 471
    .restart local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/fsck/k9/controller/MessagingListener;->listFoldersFinished(Lcom/fsck/k9/Account;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 479
    .end local v4    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_7
    if-eqz v8, :cond_a

    .line 480
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Folder;

    .line 481
    .restart local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_7

    .line 477
    .end local v3    # "foldersToCreate":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    .end local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    .end local v7    # "localFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v11    # "remoteFolderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "remoteFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .end local v13    # "store":Lcom/fsck/k9/mail/Store;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_3
    invoke-static {v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 479
    if-eqz v8, :cond_a

    .line 480
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Folder;

    .line 481
    .restart local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_8

    .line 482
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "localFolder":Lcom/fsck/k9/mail/Folder;
    :cond_9
    throw v14

    .line 485
    :cond_a
    return-void
.end method

.method public removeListener(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public saveDraft(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;JZ)Lcom/fsck/k9/mail/Message;
    .locals 9
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "existingDraftId"    # J
    .param p5, "saveRemotely"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3799
    const/4 v3, 0x0

    .line 3801
    .local v3, "localMessage":Lcom/fsck/k9/mail/Message;
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v4

    .line 3802
    .local v4, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    .line 3803
    .local v2, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 3805
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-eqz v6, :cond_0

    .line 3806
    invoke-virtual {v2, p3, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessageUidById(J)Ljava/lang/String;

    move-result-object v5

    .line 3807
    .local v5, "uid":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    .line 3811
    .end local v5    # "uid":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 3813
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v3

    .line 3814
    sget-object v6, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 3816
    if-eqz p5, :cond_1

    .line 3817
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    move-result-object v0

    .line 3818
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 3819
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3825
    .end local v0    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .end local v2    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_1
    :goto_0
    return-object v3

    .line 3822
    :catch_0
    move-exception v1

    .line 3823
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v6, "Unable to save message as draft."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public searchLocalMessages(Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "search"    # Lcom/fsck/k9/search/LocalSearch;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$5;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method searchLocalMessagesSynchronous(Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 10
    .param p1, "search"    # Lcom/fsck/k9/search/LocalSearch;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 501
    new-instance v6, Lcom/fsck/k9/AccountStats;

    invoke-direct {v6}, Lcom/fsck/k9/AccountStats;-><init>()V

    .line 502
    .local v6, "stats":Lcom/fsck/k9/AccountStats;
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/fsck/k9/search/LocalSearch;->getAccountUuids()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 503
    .local v7, "uuidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 504
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    const-string v8, "allAccounts"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 507
    .local v2, "allAccounts":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 509
    .local v0, "account":Lcom/fsck/k9/Account;
    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 514
    :cond_1
    new-instance v5, Lcom/fsck/k9/controller/MessagingController$6;

    invoke-direct {v5, p0, v6, p2, v0}, Lcom/fsck/k9/controller/MessagingController$6;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/AccountStats;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/Account;)V

    .line 540
    .local v5, "retrievalListener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v4

    .line 541
    .local v4, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v4, v5, p1}, Lcom/fsck/k9/mailstore/LocalStore;->searchForMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/search/LocalSearch;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_0
    move-exception v3

    .line 543
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 548
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "retrievalListener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :cond_2
    if-eqz p2, :cond_3

    .line 549
    invoke-interface {p2, v6}, Lcom/fsck/k9/controller/MessagingListener;->searchStats(Lcom/fsck/k9/AccountStats;)V

    .line 551
    :cond_3
    return-void
.end method

.method public searchRemoteMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/concurrent/Future;
    .locals 9
    .param p1, "acctUuid"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p4, "requiredFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    .local p5, "forbiddenFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const-string v0, "searchRemoteMessages (acct = %s, folderName = %s, query = %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/controller/MessagingController$7;-><init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method searchRemoteMessagesSynchronous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 17
    .param p1, "acctUuid"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 568
    .local p4, "requiredFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    .local p5, "forbiddenFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v3

    .line 570
    .local v3, "acct":Lcom/fsck/k9/Account;
    if-eqz p6, :cond_0

    .line 571
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/fsck/k9/controller/MessagingListener;->remoteSearchStarted(Ljava/lang/String;)V

    .line 574
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v5, "extraResults":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :try_start_0
    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v11

    .line 577
    .local v11, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v7

    .line 579
    .local v7, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    if-eqz v11, :cond_1

    if-nez v7, :cond_3

    .line 580
    :cond_1
    new-instance v13, Lcom/fsck/k9/mail/MessagingException;

    const-string v14, "Could not get store"

    invoke-direct {v13, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v11    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :catch_0
    move-exception v4

    .line 614
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 615
    const-string v13, "Caught exception on aborted remote search; safe to ignore."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v4, v13, v14}, Ltimber/log/Timber;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    :goto_0
    if-eqz p6, :cond_2

    .line 625
    const/4 v13, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v14

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v13, v14, v5}, Lcom/fsck/k9/controller/MessagingListener;->remoteSearchFinished(Ljava/lang/String;IILjava/util/List;)V

    .line 629
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 583
    .restart local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v11    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v9

    .line 584
    .local v9, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v6

    .line 585
    .local v6, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    if-eqz v9, :cond_4

    if-nez v6, :cond_6

    .line 586
    :cond_4
    new-instance v13, Lcom/fsck/k9/mail/MessagingException;

    const-string v14, "Folder not found"

    invoke-direct {v13, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 624
    .end local v6    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v9    # "remoteFolder":Lcom/fsck/k9/mail/Folder;
    .end local v11    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :catchall_0
    move-exception v13

    if-eqz p6, :cond_5

    .line 625
    const/4 v14, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v15

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v14, v15, v5}, Lcom/fsck/k9/controller/MessagingListener;->remoteSearchFinished(Ljava/lang/String;IILjava/util/List;)V

    :cond_5
    throw v13

    .line 589
    .restart local v6    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v9    # "remoteFolder":Lcom/fsck/k9/mail/Folder;
    .restart local v11    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_6
    :try_start_3
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v9, v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->search(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v8

    .line 591
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const-string v13, "Remote search got %d results"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-virtual {v6, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->extractNewMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 595
    .local v10, "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 597
    if-eqz p6, :cond_7

    .line 598
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    .line 599
    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v14

    .line 598
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v13, v14}, Lcom/fsck/k9/controller/MessagingListener;->remoteSearchServerQueryComplete(Ljava/lang/String;II)V

    .line 602
    :cond_7
    new-instance v13, Lcom/fsck/k9/controller/UidReverseComparator;

    invoke-direct {v13}, Lcom/fsck/k9/controller/UidReverseComparator;-><init>()V

    invoke-static {v10, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 604
    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v12

    .line 605
    .local v12, "resultLimit":I
    if-lez v12, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v12, :cond_8

    .line 606
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v10, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 607
    const/4 v13, 0x0

    invoke-interface {v10, v13, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 610
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v10, v6, v9, v1}, Lcom/fsck/k9/controller/MessagingController;->loadSearchResultsSynchronous(Ljava/util/List;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 624
    if-eqz p6, :cond_2

    .line 625
    const/4 v13, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v14

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v13, v14, v5}, Lcom/fsck/k9/controller/MessagingListener;->remoteSearchFinished(Ljava/lang/String;IILjava/util/List;)V

    goto/16 :goto_1

    .line 617
    .end local v6    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v8    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v9    # "remoteFolder":Lcom/fsck/k9/mail/Folder;
    .end local v10    # "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v11    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .end local v12    # "resultLimit":I
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_4
    const-string v13, "Could not complete remote search"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v4, v13, v14}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    if-eqz p6, :cond_a

    .line 619
    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p6

    invoke-interface {v0, v13, v14}, Lcom/fsck/k9/controller/MessagingListener;->remoteSearchFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_a
    invoke-static {v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public sendAlternate(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 3374
    const-string v11, "Got message %s:%s:%s for sendAlternate"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 3375
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 3374
    invoke-static {v11, v12}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3377
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3378
    .local v4, "msg":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 3379
    .local v6, "quotedText":Ljava/lang/String;
    const-string v11, "text/plain"

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v5

    .line 3380
    .local v5, "part":Lcom/fsck/k9/mail/Part;
    if-nez v5, :cond_0

    .line 3381
    const-string v11, "text/html"

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v5

    .line 3383
    :cond_0
    if-eqz v5, :cond_1

    .line 3384
    invoke-static {v5}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v6

    .line 3386
    :cond_1
    if-eqz v6, :cond_2

    .line 3387
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3389
    :cond_2
    const-string v11, "android.intent.extra.SUBJECT"

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mailstore/LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3391
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mailstore/LocalMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    .line 3392
    .local v2, "from":[Lcom/fsck/k9/mail/Address;
    array-length v11, v2

    new-array v9, v11, [Ljava/lang/String;

    .line 3393
    .local v9, "senders":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v2

    if-ge v3, v11, :cond_3

    .line 3394
    aget-object v11, v2, v3

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v3

    .line 3393
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3396
    :cond_3
    const-string v11, "com.fsck.k9.intent.extra.SENDER"

    invoke-virtual {v4, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3398
    sget-object v11, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mailstore/LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v10

    .line 3399
    .local v10, "to":[Lcom/fsck/k9/mail/Address;
    array-length v11, v10

    new-array v8, v11, [Ljava/lang/String;

    .line 3400
    .local v8, "recipientsTo":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    array-length v11, v10

    if-ge v3, v11, :cond_4

    .line 3401
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v3

    .line 3400
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3403
    :cond_4
    const-string v11, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3405
    sget-object v11, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mailstore/LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 3406
    .local v1, "cc":[Lcom/fsck/k9/mail/Address;
    array-length v11, v1

    new-array v7, v11, [Ljava/lang/String;

    .line 3407
    .local v7, "recipientsCc":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    array-length v11, v1

    if-ge v3, v11, :cond_5

    .line 3408
    aget-object v11, v1, v3

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v3

    .line 3407
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3410
    :cond_5
    const-string v11, "android.intent.extra.CC"

    invoke-virtual {v4, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3412
    const-string v11, "text/plain"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3413
    const v11, 0x7f070341

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3414
    return-void
.end method

.method public sendMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    const/4 v6, 0x0

    .line 2446
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    .line 2447
    .local v3, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 2448
    .local v1, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 2449
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;)Ljava/util/Map;

    .line 2450
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v2

    .line 2451
    .local v2, "localMessage":Lcom/fsck/k9/mail/Message;
    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2452
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    .line 2453
    invoke-virtual {p0, p1, p3}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2464
    .end local v1    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v2    # "localMessage":Lcom/fsck/k9/mail/Message;
    .end local v3    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :goto_0
    return-void

    .line 2454
    :catch_0
    move-exception v0

    .line 2461
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error sending message"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2480
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$21;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/controller/MessagingController$21;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 2498
    return-void
.end method

.method public sendPendingMessages(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 2468
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    .line 2469
    .local v1, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 2470
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0

    .line 2472
    .end local v0    # "account":Lcom/fsck/k9/Account;
    :cond_0
    return-void
.end method

.method protected sendPendingMessagesSynchronous(Lcom/fsck/k9/Account;)V
    .locals 22
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2539
    const/4 v5, 0x0

    .line 2540
    .local v5, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const/4 v12, 0x0

    .line 2541
    .local v12, "lastFailure":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 2543
    .local v8, "wasPermanentFailure":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v4

    .line 2545
    .local v4, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v2

    .line 2544
    invoke-virtual {v4, v2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v5

    .line 2546
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalFolder;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2547
    const-string v2, "Outbox does not exist"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    if-nez v12, :cond_0

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lcom/fsck/k9/Account;)V

    .line 2671
    :cond_0
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2673
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :goto_0
    return-void

    .line 2550
    .restart local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/controller/MessagingListener;

    .line 2551
    .local v11, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    :try_end_1
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2658
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catch_0
    move-exception v7

    .line 2659
    .local v7, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :try_start_2
    const-string v2, "Failed to send pending messages because storage is not available - trying again later."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2660
    new-instance v2, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v2, v7}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2668
    .end local v7    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catchall_0
    move-exception v2

    if-nez v12, :cond_2

    .line 2669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lcom/fsck/k9/Account;)V

    .line 2671
    :cond_2
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v2

    .line 2553
    .restart local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_3
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v5, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 2555
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v13

    .line 2556
    .local v13, "localMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    const/4 v15, 0x0

    .line 2557
    .local v15, "progress":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    .line 2558
    .local v16, "todo":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/controller/MessagingListener;

    .line 2559
    .restart local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v11, v0, v3, v15, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_3
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2661
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v13    # "localMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .end local v15    # "progress":I
    .end local v16    # "todo":I
    :catch_1
    move-exception v7

    .line 2662
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "Failed to send pending messages"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2664
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/controller/MessagingListener;

    .line 2665
    .restart local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 2565
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .restart local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v13    # "localMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .restart local v15    # "progress":I
    .restart local v16    # "todo":I
    :cond_4
    :try_start_5
    new-instance v10, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v10}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 2566
    .local v10, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v10, v2}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2567
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v10, v2}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2569
    const-string v2, "Scanning folder \'%s\' (%d) for messages to send"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v18, 0x0

    .line 2570
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v18

    const/16 v18, 0x1

    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalFolder;->getDatabaseId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v18

    .line 2569
    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->transportProvider:Lcom/fsck/k9/mail/TransportProvider;

    sget-object v3, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/fsck/k9/mail/TransportProvider;->getTransport(Landroid/content/Context;Lcom/fsck/k9/mail/store/StoreConfig;)Lcom/fsck/k9/mail/Transport;

    move-result-object v17

    .line 2574
    .local v17, "transport":Lcom/fsck/k9/mail/Transport;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2575
    .local v6, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v6, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2576
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V
    :try_end_5
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 2580
    :cond_5
    :try_start_6
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2581
    .local v9, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->sendCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2582
    .local v14, "oldCount":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v14, :cond_6

    .line 2583
    move-object v9, v14

    .line 2586
    :cond_6
    const-string v2, "Send count for message %s is %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v19

    const/16 v19, 0x1

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v19

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2588
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_7

    .line 2589
    const-string v2, "Send count for message %s can\'t be delivered after %d attempts. Giving up until the user restarts the device"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 2590
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v19

    const/16 v19, 0x1

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v19

    .line 2589
    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    .line 2592
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 2591
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/fsck/k9/notification/NotificationController;->showSendFailedNotification(Lcom/fsck/k9/Account;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 2639
    .end local v9    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v14    # "oldCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :catch_2
    move-exception v7

    .line 2640
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v12, v7

    .line 2641
    const/4 v8, 0x0

    .line 2642
    :try_start_7
    const-string v2, "Failed to fetch message for sending"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2643
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v7}, Lcom/fsck/k9/controller/MessagingController;->notifySynchronizeMailboxFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/lang/Exception;)V
    :try_end_7
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 2596
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v14    # "oldCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_7
    :try_start_8
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v10, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2598
    :try_start_9
    const-string v2, "X-K9mail-Identity"

    invoke-virtual {v6, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_8

    .line 2599
    const-string v2, "The user has set the Outbox and Drafts folder to the same thing. This message appears to be a draft, so K-9 will not send it"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 2616
    :catch_3
    move-exception v7

    .line 2617
    .local v7, "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    move-object v12, v7

    .line 2618
    const/4 v8, 0x0

    .line 2620
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lcom/fsck/k9/Account;Z)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 2621
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Store;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/Message;Ljava/lang/Exception;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 2604
    .end local v7    # "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    :cond_8
    :try_start_b
    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2606
    const-string v2, "Sending message with UID %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v19

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2607
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/Transport;->sendMessage(Lcom/fsck/k9/mail/Message;)V

    .line 2609
    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2610
    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2611
    add-int/lit8 v15, v15, 0x1

    .line 2612
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/controller/MessagingListener;

    .line 2613
    .restart local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v11, v0, v3, v15, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_b
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 2622
    .end local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catch_4
    move-exception v7

    .line 2623
    .local v7, "e":Lcom/fsck/k9/mail/CertificateValidationException;
    move-object v12, v7

    .line 2624
    const/4 v8, 0x0

    .line 2626
    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lcom/fsck/k9/Account;Ljava/lang/Exception;Z)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 2627
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Store;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/Message;Ljava/lang/Exception;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 2615
    .end local v7    # "e":Lcom/fsck/k9/mail/CertificateValidationException;
    :cond_9
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/fsck/k9/controller/MessagingController;->moveOrDeleteSentMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalStore;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;)V
    :try_end_d
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    .line 2628
    :catch_5
    move-exception v7

    .line 2629
    .local v7, "e":Lcom/fsck/k9/mail/MessagingException;
    move-object v12, v7

    .line 2630
    :try_start_e
    invoke-virtual {v7}, Lcom/fsck/k9/mail/MessagingException;->isPermanentFailure()Z

    move-result v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 2632
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Store;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/Message;Ljava/lang/Exception;Z)V

    goto/16 :goto_4

    .line 2633
    .end local v7    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catch_6
    move-exception v7

    .line 2634
    .local v7, "e":Ljava/lang/Exception;
    move-object v12, v7

    .line 2635
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 2637
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Store;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/Message;Ljava/lang/Exception;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    .line 2647
    .end local v6    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v14    # "oldCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_a
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/controller/MessagingListener;

    .line 2648
    .restart local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V

    goto :goto_6

    .line 2651
    .end local v11    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_b
    if-eqz v12, :cond_c

    .line 2652
    if-eqz v8, :cond_e

    .line 2653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12}, Lcom/fsck/k9/notification/NotificationController;->showSendFailedNotification(Lcom/fsck/k9/Account;Ljava/lang/Exception;)V
    :try_end_f
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2668
    :cond_c
    :goto_7
    if-nez v12, :cond_d

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lcom/fsck/k9/Account;)V

    .line 2671
    :cond_d
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0

    .line 2655
    :cond_e
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12}, Lcom/fsck/k9/notification/NotificationController;->showSendFailedNotification(Lcom/fsck/k9/Account;Ljava/lang/Exception;)V
    :try_end_10
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    .line 2668
    .end local v4    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v10    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v13    # "localMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .end local v15    # "progress":I
    .end local v16    # "todo":I
    .end local v17    # "transport":Lcom/fsck/k9/mail/Transport;
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_f
    if-nez v12, :cond_10

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lcom/fsck/k9/Account;)V

    .line 2671
    :cond_10
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0
.end method

.method public setCheckMailListener(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p1, "checkMailListener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 3882
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v0, :cond_0

    .line 3883
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 3885
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController;->checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

    .line 3886
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v0, :cond_1

    .line 3887
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->checkMailListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 3889
    :cond_1
    return-void
.end method

.method public setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 10
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p5, "newState"    # Z

    .prologue
    .line 2242
    const/4 v6, 0x0

    .line 2244
    .local v6, "localFolder":Lcom/fsck/k9/mail/Folder;
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v7

    .line 2245
    .local v7, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v7, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v6

    .line 2246
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 2248
    invoke-virtual {v6, p3}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v9

    .line 2249
    .local v9, "message":Lcom/fsck/k9/mail/Message;
    if-eqz v9, :cond_0

    .line 2250
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    :cond_0
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2257
    return-void

    .line 2252
    .end local v7    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v9    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v8

    .line 2253
    .local v8, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2255
    .end local v8    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v0
.end method

.method public setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 15
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p4, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p5, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2184
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v9, 0x0

    .line 2186
    .local v9, "localFolder":Lcom/fsck/k9/mail/Folder;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v10

    .line 2187
    .local v10, "localStore":Lcom/fsck/k9/mail/Store;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v9

    .line 2188
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 2191
    sget-object v2, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_1

    if-nez p5, :cond_1

    .line 2192
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2193
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/Message;

    .line 2194
    .local v12, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v12}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    .line 2195
    .local v13, "uid":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 2196
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->sendCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v13}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2219
    .end local v10    # "localStore":Lcom/fsck/k9/mail/Store;
    .end local v12    # "message":Lcom/fsck/k9/mail/Message;
    .end local v13    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 2220
    .local v11, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2222
    .end local v11    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v2

    .line 2202
    .restart local v10    # "localStore":Lcom/fsck/k9/mail/Store;
    :cond_1
    :try_start_2
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v9, v0, v2, v1}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    .line 2204
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v14

    .line 2205
    .local v14, "unreadMessageCount":I
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/controller/MessagingListener;

    .line 2206
    .local v8, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v8, v0, v1, v14}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    goto :goto_1

    .line 2216
    .end local v8    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/fsck/k9/controller/MessagingController;->getUidsFromMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .local v7, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p5

    move-object/from16 v6, p4

    .line 2217
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V

    .line 2218
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2222
    invoke-static {v9}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2224
    return-void
.end method

.method public setFlag(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p4, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2082
    .local p2, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->setFlagInCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 2084
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$16;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2090
    return-void
.end method

.method public setFlagForThreads(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p4, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2095
    .local p2, "threadRootIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->setFlagForThreadsInCache(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 2097
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$17;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2103
    return-void
.end method

.method public setupPushing(Lcom/fsck/k9/Account;)Z
    .locals 22
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 3897
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/mail/Pusher;

    .line 3898
    .local v13, "previousPusher":Lcom/fsck/k9/mail/Pusher;
    if-eqz v13, :cond_0

    .line 3899
    invoke-interface {v13}, Lcom/fsck/k9/mail/Pusher;->stop()V

    .line 3902
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v3

    .line 3903
    .local v3, "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v4

    .line 3905
    .local v4, "aPushMode":Lcom/fsck/k9/Account$FolderMode;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3907
    .local v11, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v9

    .line 3908
    .local v9, "localStore":Lcom/fsck/k9/mail/Store;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/fsck/k9/mail/Store;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/Folder;

    .line 3909
    .local v8, "folder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 3912
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/fsck/k9/mail/Folder;->open(I)V

    .line 3914
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    .line 3915
    .local v6, "fDisplayClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v7

    .line 3917
    .local v7, "fPushClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/fsck/k9/controller/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 3929
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/fsck/k9/controller/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 3941
    const-string v18, "Starting pusher for %s:%s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3943
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3982
    .end local v3    # "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    .end local v4    # "aPushMode":Lcom/fsck/k9/Account$FolderMode;
    .end local v6    # "fDisplayClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v7    # "fPushClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v8    # "folder":Lcom/fsck/k9/mail/Folder;
    .end local v9    # "localStore":Lcom/fsck/k9/mail/Store;
    .end local v11    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "previousPusher":Lcom/fsck/k9/mail/Pusher;
    :catch_0
    move-exception v5

    .line 3983
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "Got exception while setting up pushing"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3985
    const/16 v17, 0x0

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return v17

    .line 3946
    .restart local v3    # "aDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    .restart local v4    # "aPushMode":Lcom/fsck/k9/Account$FolderMode;
    .restart local v9    # "localStore":Lcom/fsck/k9/mail/Store;
    .restart local v11    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "previousPusher":Lcom/fsck/k9/mail/Pusher;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 3947
    new-instance v15, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v15, v0, v1, v2}, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;-><init>(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V

    .line 3948
    .local v15, "receiver":Lcom/fsck/k9/mail/PushReceiver;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getMaxPushFolders()I

    move-result v10

    .line 3950
    .local v10, "maxPushFolders":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v10, :cond_3

    .line 3951
    const-string v17, "Count of folders to push for account %s is %d, greater than limit of %d, truncating"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3952
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3951
    invoke-static/range {v17 .. v18}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3954
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v11, v0, v10}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 3958
    :cond_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v16

    .line 3959
    .local v16, "store":Lcom/fsck/k9/mail/Store;
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z

    move-result v17

    if-nez v17, :cond_4

    .line 3960
    const-string v17, "Account %s is not push capable, skipping"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3962
    const/16 v17, 0x0

    goto :goto_1

    .line 3964
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/Store;->getPusher(Lcom/fsck/k9/mail/PushReceiver;)Lcom/fsck/k9/mail/Pusher;

    move-result-object v14

    .line 3965
    .local v14, "pusher":Lcom/fsck/k9/mail/Pusher;
    if-eqz v14, :cond_5

    .line 3966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/Pusher;

    .line 3967
    .local v12, "oldPusher":Lcom/fsck/k9/mail/Pusher;
    if-nez v12, :cond_5

    .line 3968
    invoke-interface {v14, v11}, Lcom/fsck/k9/mail/Pusher;->start(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3976
    .end local v12    # "oldPusher":Lcom/fsck/k9/mail/Pusher;
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 3971
    .end local v14    # "pusher":Lcom/fsck/k9/mail/Pusher;
    .end local v16    # "store":Lcom/fsck/k9/mail/Store;
    :catch_1
    move-exception v5

    .line 3972
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v17, "Could not get remote store"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3973
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3978
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "maxPushFolders":I
    .end local v15    # "receiver":Lcom/fsck/k9/mail/PushReceiver;
    :cond_6
    const-string v17, "No folders are configured for pushing in account %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3979
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method stop()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/controller/MessagingController;->stopped:Z

    .line 183
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->controllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 184
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->controllerThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 185
    return-void
.end method

.method public stopAllPushing()V
    .locals 4

    .prologue
    .line 3989
    const-string v2, "Stopping all pushers"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3991
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->pushers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3992
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fsck/k9/mail/Pusher;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3993
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Pusher;

    .line 3994
    .local v1, "pusher":Lcom/fsck/k9/mail/Pusher;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3995
    invoke-interface {v1}, Lcom/fsck/k9/mail/Pusher;->stop()V

    goto :goto_0

    .line 3997
    .end local v1    # "pusher":Lcom/fsck/k9/mail/Pusher;
    :cond_0
    return-void
.end method

.method public synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p4, "providedRemoteFolder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 707
    const-string v6, "synchronizeMailbox"

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$9;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V

    invoke-direct {p0, v6, p3, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 713
    return-void
.end method

.method synchronizeMailboxSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V
    .locals 44
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .param p4, "providedRemoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 724
    const/4 v8, 0x0

    .line 725
    .local v8, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    const/16 v37, 0x0

    .line 727
    .local v37, "tLocalFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const-string v6, "Synchronizing folder %s:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 730
    .local v22, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 737
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v7, v11}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_1

    .line 743
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_1
    const/4 v13, 0x0

    .line 745
    .local v13, "commandException":Ljava/lang/Exception;
    :try_start_0
    const-string v6, "SYNC: About to process pending commands for account %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    :goto_2
    :try_start_2
    const-string v6, "SYNC: About to get local folder %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v25

    .line 761
    .local v25, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v37

    .line 762
    move-object/from16 v9, v37

    .line 763
    .local v9, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 764
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->updateLastUid()V

    .line 765
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->getAllMessagesAndEffectiveDates()Ljava/util/Map;

    move-result-object v26

    .line 767
    .local v26, "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p4, :cond_4

    .line 768
    const-string v6, "SYNC: using providedRemoteFolder %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    move-object/from16 v8, p4

    .line 812
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/fsck/k9/notification/NotificationController;->clearAuthenticationErrorNotification(Lcom/fsck/k9/Account;Z)V

    .line 817
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getMessageCount()I

    move-result v32

    .line 819
    .local v32, "remoteMessageCount":I
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->getVisibleLimit()I

    move-result v40

    .line 821
    .local v40, "visibleLimit":I
    if-gez v40, :cond_2

    .line 822
    const/16 v40, 0x19

    .line 825
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v10, "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    .line 828
    .local v35, "remoteUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    const-string v6, "SYNC: Remote message count for folder %s is %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v7, v11

    const/4 v11, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v18

    .line 831
    .local v18, "earliestDate":Ljava/util/Date;
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 834
    .local v20, "earliestTimestamp":J
    :goto_4
    const/16 v33, 0x1

    .line 835
    .local v33, "remoteStart":I
    if-lez v32, :cond_11

    .line 837
    if-lez v40, :cond_b

    .line 838
    const/4 v6, 0x0

    sub-int v7, v32, v40

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v33, v6, 0x1

    .line 843
    :goto_5
    const-string v6, "SYNC: About to get messages %d through %d for folder %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 844
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x2

    aput-object p2, v7, v11

    .line 843
    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    new-instance v19, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 847
    .local v19, "headerProgress":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 848
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxHeadersStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 949
    .end local v9    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v10    # "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v18    # "earliestDate":Ljava/util/Date;
    .end local v19    # "headerProgress":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v20    # "earliestTimestamp":J
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v25    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v26    # "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v32    # "remoteMessageCount":I
    .end local v33    # "remoteStart":I
    .end local v35    # "remoteUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .end local v40    # "visibleLimit":I
    :catch_0
    move-exception v17

    .line 950
    .local v17, "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    const/4 v6, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lcom/fsck/k9/Account;Z)V

    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 953
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const-string v7, "Authentication failure"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 978
    .end local v17    # "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :catchall_0
    move-exception v6

    if-nez p4, :cond_3

    .line 979
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 982
    :cond_3
    invoke-static/range {v37 .. v37}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v6

    .line 749
    :catch_1
    move-exception v17

    .line 750
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "Failure processing command, but allow message sync attempt"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    move-object/from16 v13, v17

    goto/16 :goto_2

    .line 771
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v9    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v25    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v26    # "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v34

    .line 773
    .local v34, "remoteStore":Lcom/fsck/k9/mail/Store;
    const-string v6, "SYNC: About to get remote folder %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v8

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/fsck/k9/controller/MessagingController;->verifyOrCreateRemoteSpecialFolder(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)Z
    :try_end_4
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-nez v6, :cond_7

    .line 978
    if-nez p4, :cond_5

    .line 979
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 982
    :cond_5
    invoke-static/range {v37 .. v37}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 985
    .end local v9    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v13    # "commandException":Ljava/lang/Exception;
    .end local v25    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v26    # "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v34    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_6
    :goto_8
    return-void

    .line 802
    .restart local v9    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v13    # "commandException":Ljava/lang/Exception;
    .restart local v25    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v26    # "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v34    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :cond_7
    :try_start_5
    const-string v6, "SYNC: About to open remote folder %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    sget-object v6, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_ON_POLL:Lcom/fsck/k9/Account$Expunge;

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getExpungePolicy()Lcom/fsck/k9/Account$Expunge;

    move-result-object v7

    if-ne v6, v7, :cond_8

    .line 805
    const-string v6, "SYNC: Expunging folder %s:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->expunge()V

    .line 808
    :cond_8
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/fsck/k9/mail/Folder;->open(I)V
    :try_end_5
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 955
    .end local v9    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v25    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v26    # "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v34    # "remoteStore":Lcom/fsck/k9/mail/Store;
    :catch_2
    move-exception v17

    .line 956
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "synchronizeMailbox"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v36

    .line 960
    .local v36, "rootMessage":Ljava/lang/String;
    if-eqz v37, :cond_9

    .line 962
    :try_start_7
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->setStatus(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->setLastChecked(J)V
    :try_end_7
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 970
    :cond_9
    :goto_9
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 971
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    .line 831
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v36    # "rootMessage":Ljava/lang/String;
    .restart local v9    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v10    # "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v18    # "earliestDate":Ljava/util/Date;
    .restart local v25    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v26    # "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v32    # "remoteMessageCount":I
    .restart local v35    # "remoteUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .restart local v40    # "visibleLimit":I
    :cond_a
    const-wide/16 v20, 0x0

    goto/16 :goto_4

    .line 840
    .restart local v20    # "earliestTimestamp":J
    .restart local v33    # "remoteStart":I
    :cond_b
    const/16 v33, 0x1

    goto/16 :goto_5

    .line 852
    .restart local v19    # "headerProgress":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_c
    const/4 v6, 0x0

    .line 853
    :try_start_9
    move/from16 v0, v33

    move/from16 v1, v32

    move-object/from16 v2, v18

    invoke-virtual {v8, v0, v1, v2, v6}, Lcom/fsck/k9/mail/Folder;->getMessages(IILjava/util/Date;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v31

    .line 855
    .local v31, "remoteMessageArray":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v28

    .line 857
    .local v28, "messageCount":I
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/fsck/k9/mail/Message;

    .line 858
    .local v38, "thisMess":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 859
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 860
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v11, v3}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxHeadersProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_c

    .line 862
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_e
    invoke-virtual/range {v38 .. v38}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 863
    .local v23, "localMessageTimestamp":Ljava/lang/Long;
    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    cmp-long v7, v42, v20

    if-ltz v7, :cond_d

    .line 864
    :cond_f
    move-object/from16 v0, v38

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-virtual/range {v38 .. v38}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 869
    .end local v23    # "localMessageTimestamp":Ljava/lang/Long;
    .end local v38    # "thisMess":Lcom/fsck/k9/mail/Message;
    :cond_10
    const-string v6, "SYNC: Got %d messages for folder %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 872
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v11

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v7, v11}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxHeadersFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_d

    .line 875
    .end local v19    # "headerProgress":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v28    # "messageCount":I
    .end local v31    # "remoteMessageArray":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :cond_11
    if-gez v32, :cond_12

    .line 876
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message count "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " for folder "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 882
    :cond_12
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->getMoreMessages()Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    move-result-object v29

    .line 883
    .local v29, "moreMessages":Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->syncRemoteDeletions()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 884
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v15, "destroyMessageUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 886
    .local v24, "localMessageUid":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_13

    .line 887
    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 891
    .end local v24    # "localMessageUid":Ljava/lang/String;
    :cond_14
    invoke-virtual {v9, v15}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 892
    .local v16, "destroyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    .line 893
    sget-object v29, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 895
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->destroyMessages(Ljava/util/List;)V

    .line 897
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/mail/Message;

    .line 898
    .local v14, "destroyMessage":Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 899
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v14}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_f

    .line 905
    .end local v14    # "destroyMessage":Lcom/fsck/k9/mail/Message;
    .end local v15    # "destroyMessageUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "destroyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_16
    const/16 v26, 0x0

    .line 907
    sget-object v6, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    move-object/from16 v0, v29

    if-ne v0, v6, :cond_17

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v33

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->updateMoreMessages(Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/Date;I)V

    .line 914
    :cond_17
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/fsck/k9/controller/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZZ)I

    move-result v30

    .line 916
    .local v30, "newMessages":I
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->getUnreadMessageCount()I

    move-result v39

    .line 917
    .local v39, "unreadMessageCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 918
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v39

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    goto :goto_10

    .line 923
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->setLastChecked(J)V

    .line 924
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->setStatus(Ljava/lang/String;)V

    .line 926
    const-string v6, "Done synchronizing folder %s:%s @ %tc with %d new messages"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 927
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    aput-object p2, v7, v11

    const/4 v11, 0x2

    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x3

    .line 930
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    .line 926
    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 933
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_11

    .line 937
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_19
    if-eqz v13, :cond_1a

    .line 938
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/fsck/k9/controller/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v36

    .line 939
    .restart local v36    # "rootMessage":Ljava/lang/String;
    const-string v6, "Root cause failure in %s:%s was \'%s\'"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 940
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    invoke-virtual/range {v37 .. v37}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x2

    aput-object v36, v7, v11

    .line 939
    invoke-static {v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->setStatus(Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/fsck/k9/controller/MessagingListener;

    .line 943
    .restart local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 947
    .end local v22    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v36    # "rootMessage":Ljava/lang/String;
    :cond_1a
    const-string v6, "Done synchronizing folder %s:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    aput-object p2, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 978
    if-nez p4, :cond_1b

    .line 979
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 982
    :cond_1b
    invoke-static/range {v37 .. v37}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_8

    .line 978
    .end local v9    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v10    # "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v18    # "earliestDate":Ljava/util/Date;
    .end local v20    # "earliestTimestamp":J
    .end local v25    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v26    # "localUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v29    # "moreMessages":Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    .end local v30    # "newMessages":I
    .end local v32    # "remoteMessageCount":I
    .end local v33    # "remoteStart":I
    .end local v35    # "remoteUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    .end local v39    # "unreadMessageCount":I
    .end local v40    # "visibleLimit":I
    .local v17, "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    :cond_1c
    if-nez p4, :cond_1d

    .line 979
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 982
    :cond_1d
    invoke-static/range {v37 .. v37}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_8

    .line 964
    .local v17, "e":Ljava/lang/Exception;
    .restart local v36    # "rootMessage":Ljava/lang/String;
    :catch_3
    move-exception v27

    .line 965
    .local v27, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_a
    const-string v6, "Could not set last checked on folder %s:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 966
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    invoke-virtual/range {v37 .. v37}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    .line 965
    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 973
    .end local v27    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_1e
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lcom/fsck/k9/Account;Ljava/lang/Exception;Z)V

    .line 974
    const-string v6, "Failed synchronizing folder %s:%s @ %tc"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    aput-object p2, v7, v11

    const/4 v11, 0x2

    .line 975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v11

    .line 974
    invoke-static {v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 978
    if-nez p4, :cond_1f

    .line 979
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 982
    :cond_1f
    invoke-static/range {v37 .. v37}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_8
.end method

.method public systemStatusChanged()V
    .locals 3

    .prologue
    .line 4062
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 4063
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v0}, Lcom/fsck/k9/controller/MessagingListener;->systemStatusChanged()V

    goto :goto_0

    .line 4065
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_0
    return-void
.end method
