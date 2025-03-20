.class public Lcom/batch/android/f/e;
.super Lcom/batch/android/f/b;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field private static k:Lcom/batch/android/f/e;


# instance fields
.field private b:Z

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/net/Uri;

.field private h:Z

.field private i:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/batch/android/PushNotificationType;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 989
    new-instance v0, Lcom/batch/android/f/e;

    invoke-direct {v0}, Lcom/batch/android/f/e;-><init>()V

    sput-object v0, Lcom/batch/android/f/e;->k:Lcom/batch/android/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/batch/android/f/b;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/batch/android/f/e;->b:Z

    .line 60
    iput v1, p0, Lcom/batch/android/f/e;->c:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/batch/android/f/e;->f:I

    .line 76
    iput-object v2, p0, Lcom/batch/android/f/e;->g:Landroid/net/Uri;

    .line 80
    iput-boolean v1, p0, Lcom/batch/android/f/e;->h:Z

    .line 90
    iput-object v2, p0, Lcom/batch/android/f/e;->j:Ljava/lang/Integer;

    return-void
.end method

.method private A()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 921
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/k;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    .line 922
    if-nez v1, :cond_0

    .line 924
    const-string v1, "Batch.Push : InstanceID cannot be found, trying to fall back on standard GCM"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/k;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    .line 928
    :cond_0
    if-nez v1, :cond_1

    .line 930
    const-string v1, "Batch.Push : Unable to use GCM because the Google Play Services library is not integrated correctly or not up-to-date. Please include GooglePlayServices into your app (at least -base and -gcm modules), more info: https://batch.com/"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 981
    :goto_0
    return v0

    .line 934
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batch.Push : Unable to use GCM because the Google Play Services are not available or not up-to-date on this device. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 937
    invoke-static {v1}, Lcom/batch/android/c/k;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Please update your Google Play Services, more info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://batch.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 943
    :cond_2
    invoke-direct {p0}, Lcom/batch/android/f/e;->t()Z

    move-result v1

    if-nez v1, :cond_3

    .line 945
    const-string v1, "Batch.Push : BatchPushService is not declared in Manifest, please read the documentation for more info: https://batch.com/"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 949
    :cond_3
    invoke-direct {p0}, Lcom/batch/android/f/e;->v()Z

    move-result v1

    if-nez v1, :cond_4

    .line 951
    const-string v1, "Batch.Push : BatchPushReceiver is not declared in Manifest, please read the documentation for more info: https://batch.com/"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 955
    :cond_4
    invoke-direct {p0}, Lcom/batch/android/f/e;->w()Z

    move-result v1

    if-nez v1, :cond_5

    .line 957
    const-string v1, "Batch.Push : Permission com.google.android.c2dm.permission.RECEIVE is missing, please read the documentation for more info: https://batch.com/"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_5
    invoke-direct {p0}, Lcom/batch/android/f/e;->x()Z

    move-result v1

    if-nez v1, :cond_6

    .line 963
    const-string v1, "Batch.Push : Permission C2D_MESSAGE is missing, please read the documentation for more info: https://batch.com/"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 973
    :cond_6
    invoke-direct {p0}, Lcom/batch/android/f/e;->y()Z

    move-result v1

    if-nez v1, :cond_7

    .line 975
    const-string v1, "Batch.Push : Permission WAKE_LOCK is missing, please read the documentation for more info: https://batch.com/"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/batch/android/f/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/batch/android/f/e;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/batch/android/f/e;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/batch/android/f/e;->i:Ljava/util/EnumSet;

    return-object p1
.end method

.method static synthetic b(Lcom/batch/android/f/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/batch/android/f/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 587
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/ab;->a(Landroid/content/Context;)Lcom/batch/android/c/ab;

    move-result-object v0

    new-instance v1, Lcom/batch/android/f/e$4;

    invoke-direct {v1, p0, p1}, Lcom/batch/android/f/e$4;-><init>(Lcom/batch/android/f/e;Z)V

    invoke-virtual {v0, v1}, Lcom/batch/android/c/ab;->a(Lcom/batch/android/c/ac;)Ljava/util/concurrent/Future;

    .line 656
    return-void
.end method

.method static synthetic c(Lcom/batch/android/f/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/batch/android/f/e;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/batch/android/f/e;)Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/batch/android/f/e;->i:Ljava/util/EnumSet;

    return-object v0
.end method

.method public static q()Lcom/batch/android/f/e;
    .locals 1

    .prologue
    .line 998
    sget-object v0, Lcom/batch/android/f/e;->k:Lcom/batch/android/f/e;

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 536
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "push.token"

    invoke-virtual {v1, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    if-nez v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-object v0

    .line 545
    :cond_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "push.appversion"

    invoke-virtual {v2, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-direct {p0}, Lcom/batch/android/f/e;->s()Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 552
    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 556
    const-string v2, "Error while retrieving registration id"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 571
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 572
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    .line 574
    :catch_0
    move-exception v0

    .line 576
    const-string v1, "Error while getting app version"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    const-string v0, ""

    goto :goto_0
.end method

.method private t()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 667
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 668
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/batch/android/BatchPushService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 669
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 671
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 673
    :catch_0
    move-exception v1

    .line 675
    const-string v2, "Error while retrieving Push service"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private u()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 689
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 690
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/batch/android/BatchPushInstanceIDService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 693
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 695
    :catch_0
    move-exception v1

    .line 697
    const-string v2, "Error while retrieving instance ID token refresh service"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private v()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 711
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 712
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/batch/android/BatchPushReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 715
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 717
    :catch_0
    move-exception v1

    .line 719
    const-string v2, "Error while retrieving Push service"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 734
    :try_start_0
    const-string v0, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/j;->a(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 739
    :goto_0
    return v0

    .line 736
    :catch_0
    move-exception v0

    .line 738
    const-string v1, "Error while checking com.google.android.c2dm.permission.RECEIVE permission"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 753
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/j;->a(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 758
    :goto_0
    return v0

    .line 755
    :catch_0
    move-exception v0

    .line 757
    const-string v1, "Error while checking C2D_MESSAGE permission"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()Z
    .locals 2

    .prologue
    .line 796
    :try_start_0
    const-string v0, "android.permission.WAKE_LOCK"

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/j;->a(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 801
    :goto_0
    return v0

    .line 798
    :catch_0
    move-exception v0

    .line 800
    const-string v1, "Error while checking android.permission.WAKE_LOCK permission"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 801
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/batch/android/f/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/batch/android/f/e;->c:I

    return v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/batch/android/PushNotificationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 258
    if-nez p1, :cond_0

    move-object v0, v1

    .line 288
    :goto_0
    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/batch/android/f/e;->i:Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/batch/android/f/e;->i:Ljava/util/EnumSet;

    invoke-static {v0}, Lcom/batch/android/PushNotificationType;->toValue(Ljava/util/EnumSet;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 277
    goto :goto_0

    .line 272
    :cond_1
    invoke-static {p1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v2, "push.notiftype"

    invoke-virtual {v0, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 282
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    invoke-static {v0}, Lcom/batch/android/PushNotificationType;->fromValue(I)Ljava/util/EnumSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    const-string v2, "Error while reading notification type"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 288
    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/batch/android/f/e;->c:I

    .line 112
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c/l;->a(Landroid/content/Intent;)Lcom/batch/android/c/l;

    move-result-object v0

    .line 412
    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    const-string v1, "Batch.push.appendBatchData : Error while appending Batch data to open intent : the pushIntent seems to not be a Batch Push intent. Aborting"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/batch/android/BatchPushService;->_putPushExtraToIntent(Landroid/os/Bundle;Lcom/batch/android/c/l;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 422
    const-string v1, "Error while appending batch data to intent"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Batch.push.appendBatchData : Error while appending Batch data to open intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/batch/android/f/e;->d:Landroid/graphics/Bitmap;

    .line 152
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/batch/android/f/e;->g:Landroid/net/Uri;

    .line 368
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/batch/android/f/e;->j:Ljava/lang/Integer;

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/batch/android/f/e;->e:Ljava/lang/String;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/f/e;->b:Z

    .line 164
    return-void
.end method

.method public a(Ljava/util/EnumSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/batch/android/PushNotificationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    if-nez p1, :cond_1

    .line 302
    const-string v0, "Batch.Push : Call to setNotificationsType with null type given, aborting"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 309
    invoke-static {p1}, Lcom/batch/android/PushNotificationType;->toValue(Ljava/util/EnumSet;)I

    move-result v1

    .line 311
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 313
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    new-instance v3, Lcom/batch/android/f/e$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/batch/android/f/e$3;-><init>(Lcom/batch/android/f/e;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v3}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 327
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iput-object p1, p0, Lcom/batch/android/f/e;->i:Ljava/util/EnumSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    const-string v1, "Error while storing notification types"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/batch/android/f/e;->h:Z

    .line 389
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/f/e;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/batch/android/f/e;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/batch/android/c/l;->a(Landroid/content/Intent;)Lcom/batch/android/c/l;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/batch/android/BatchPushService;->_isPushValid(Landroid/content/Context;Lcom/batch/android/c/l;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    :goto_0
    return v0

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .line 442
    const-string v2, "Error while evaluating if should display push"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.batch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    const-string v0, "push"

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 346
    iput p1, p0, Lcom/batch/android/f/e;->f:I

    .line 347
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 457
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/f/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-static {p2}, Lcom/batch/android/BatchPushPayload;->payloadFromReceiverIntent(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;

    move-result-object v0

    .line 463
    invoke-static {p2}, Lcom/batch/android/c/l;->a(Landroid/content/Intent;)Lcom/batch/android/c/l;

    move-result-object v1

    .line 464
    const-string v2, "msg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/batch/android/c/l;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, v1, v3, v2, v0}, Lcom/batch/android/BatchPushService;->_handleNotificationPush(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchPushPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 475
    const-string v1, "An error occured while handling push notification"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batch.Push.displayNotification : An error occured during display : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/batch/android/f/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 491
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/f/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {p2}, Lcom/batch/android/c/l;->a(Landroid/content/Intent;)Lcom/batch/android/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/l;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batch/android/BatchPushService;->_markPushIdAsShown(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 498
    const-string v1, "Error while storing push as displayed"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/batch/android/f/e;->i:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 827
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    new-instance v3, Lcom/batch/android/f/e$5;

    invoke-direct {v3, p0}, Lcom/batch/android/f/e$5;-><init>(Lcom/batch/android/f/e;)V

    invoke-virtual {v0, v3}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/f/e;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/batch/android/f/e;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    invoke-direct {p0}, Lcom/batch/android/f/e;->r()Ljava/lang/String;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/batch/android/f/e;->b:Z

    if-eqz v3, :cond_7

    .line 862
    :cond_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/k;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 863
    invoke-direct {p0}, Lcom/batch/android/f/e;->u()Z

    move-result v3

    .line 864
    invoke-static {}, Lcom/batch/android/Batch;->shouldUseGoogleInstanceID()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 866
    :goto_0
    if-eqz v3, :cond_4

    .line 871
    :try_start_0
    new-instance v3, Lcom/batch/android/BatchPushInstanceIDService;

    invoke-direct {v3}, Lcom/batch/android/BatchPushInstanceIDService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting new push token (instance id? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_6

    const-string v2, "yes"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 891
    invoke-direct {p0, v0}, Lcom/batch/android/f/e;->b(Z)V

    .line 901
    :cond_2
    :goto_3
    iput-boolean v1, p0, Lcom/batch/android/f/e;->b:Z

    .line 902
    return-void

    :cond_3
    move v0, v1

    .line 864
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 877
    :goto_4
    const-string v3, "Error while instantiating BatchPushInstanceIDService"

    invoke-static {v2, v3, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 878
    const-string v0, "Batch.Push : BatchPushInstanceIDService is declared in the Manifest, but the Play Services appear to be too old! This can cause CRASHES in your app: remove it or update your Play Services to version 7.5 or higher. This error can also be caused by an incorrect proguard configuration. Falling back on classic GCM, please read the documentation for more info: https://batch.com/"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    move v0, v1

    .line 879
    goto :goto_1

    .line 883
    :cond_4
    if-eqz v0, :cond_5

    .line 885
    const-string v0, "Batch.Push : Your app is eligible for InstanceID, but BatchPushInstanceIDService is not declared in Manifest, falling back on classic GCM. Please read the documentation for more info: https://batch.com/"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 889
    :cond_6
    const-string v2, "no"

    goto :goto_2

    .line 896
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batch.Push: Registration id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->c(ZLjava/lang/String;)V

    goto :goto_3

    .line 875
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/batch/android/f/e;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/batch/android/f/e;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    new-instance v1, Lcom/batch/android/f/e$1;

    invoke-direct {v1, p0}, Lcom/batch/android/f/e$1;-><init>(Lcom/batch/android/f/e;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 192
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/f/e$2;

    invoke-direct {v2, p0, v0}, Lcom/batch/android/f/e$2;-><init>(Lcom/batch/android/f/e;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/batch/android/f/e;->f:I

    return v0
.end method

.method public n()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/batch/android/f/e;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/batch/android/f/e;->h:Z

    return v0
.end method

.method public p()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 509
    const-string v0, "InstanceID GCM auto refresh"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/batch/android/f/e;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/f/e;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/k;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 518
    invoke-static {}, Lcom/batch/android/Batch;->shouldUseGoogleInstanceID()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 520
    :goto_1
    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0, v1}, Lcom/batch/android/f/e;->b(Z)V

    goto :goto_0

    .line 518
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
