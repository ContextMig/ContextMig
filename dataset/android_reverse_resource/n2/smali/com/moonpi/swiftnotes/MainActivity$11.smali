.class Lcom/moonpi/swiftnotes/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/MainActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/moonpi/swiftnotes/MainActivity;

.field final synthetic val$appPackageName:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$11;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x60307af291acaf17L

    const-string v2, "com/moonpi/swiftnotes/MainActivity$11"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$11;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$11;->$jacocoInit()[Z

    move-result-object v0

    .line 493
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$11;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    iput-object p2, p0, Lcom/moonpi/swiftnotes/MainActivity$11;->val$appPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$11;->$jacocoInit()[Z

    move-result-object v0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$11;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/moonpi/swiftnotes/MainActivity$11;->val$appPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    .line 498
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 497
    invoke-virtual {v1, v2}, Lcom/moonpi/swiftnotes/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    const/4 v1, 0x3

    aput-boolean v7, v0, v1

    .line 505
    :goto_0
    const/16 v1, 0x8

    aput-boolean v7, v0, v1

    return-void

    .line 500
    :catch_0
    move-exception v1

    const/4 v1, 0x4

    aput-boolean v7, v0, v1

    .line 501
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$11;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/moonpi/swiftnotes/MainActivity$11;->val$appPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-boolean v7, v0, v5

    .line 502
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x6

    aput-boolean v7, v0, v3

    .line 501
    invoke-virtual {v1, v2}, Lcom/moonpi/swiftnotes/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x7

    aput-boolean v7, v0, v1

    goto :goto_0
.end method
