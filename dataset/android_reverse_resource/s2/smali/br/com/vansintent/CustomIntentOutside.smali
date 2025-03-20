.class public Lbr/com/vansintent/CustomIntentOutside;
.super Ljava/lang/Object;
.source "CustomIntentOutside.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansintent/CustomIntentOutside;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x579ba2cd337c4b85L

    const-string v2, "br/com/vansintent/CustomIntentOutside"

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansintent/CustomIntentOutside;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansintent/CustomIntentOutside;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static UpdateApp(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansintent/CustomIntentOutside;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-static {p0, v5}, Lbr/com/vansintent/CustomIntentOutside;->sucessInternetConnectivity(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x17

    aput-boolean v5, v0, v1

    .line 64
    :goto_0
    const/16 v1, 0x1c

    aput-boolean v5, v0, v1

    return-void

    .line 57
    :cond_0
    const/16 v1, 0x18

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/16 v1, 0x19

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    const/16 v1, 0x1a

    aput-boolean v5, v0, v1

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x1b

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method public static barcodeScanner(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansintent/CustomIntentOutside;->$jacocoInit()[Z

    move-result-object v2

    .line 68
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1d

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 70
    const-string v1, "SCAN_MODE"

    const-string v4, "PRODUCT_MODE"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1e

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 81
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1, v3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/16 v1, 0x1f

    aput-boolean v5, v2, v1

    .line 89
    :goto_0
    const/16 v1, 0x26

    aput-boolean v5, v2, v1

    return-void

    .line 82
    :catch_0
    move-exception v1

    const/16 v1, 0x20

    aput-boolean v5, v2, v1

    .line 83
    invoke-static {p0, v5}, Lbr/com/vansintent/CustomIntentOutside;->sucessInternetConnectivity(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x21

    aput-boolean v5, v2, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    aput-boolean v5, v2, v1

    .line 84
    const-string v1, "market://details?id=com.google.zxing.client.android"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0x23

    aput-boolean v5, v2, v3

    .line 85
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x24

    aput-boolean v5, v2, v1

    .line 86
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x25

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method public static shareShoppingListFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansintent/CustomIntentOutside;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    .line 37
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    .line 39
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    .line 40
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0xf

    aput-boolean v4, v0, v2

    .line 42
    const v2, 0x7f050047

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    return-void
.end method

.method public static shareShoppingListText(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansintent/CustomIntentOutside;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-static {p0, p1}, Lbr/com/dao/ShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;

    move-result-object v1

    const/16 v2, 0x11

    aput-boolean v5, v0, v2

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f050046

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-boolean v5, v0, v2

    .line 49
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x13

    aput-boolean v5, v0, v3

    .line 50
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x14

    aput-boolean v5, v0, v3

    .line 52
    const-string v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lbr/com/dao/ItemShoppingListDAO;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    .line 53
    const v1, 0x7f050047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    return-void
.end method

.method private static sucessInternetConnectivity(Landroid/content/Context;Z)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansintent/CustomIntentOutside;->$jacocoInit()[Z

    move-result-object v3

    .line 23
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    aput-boolean v2, v3, v2

    .line 24
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v4, 0x2

    aput-boolean v2, v3, v4

    .line 26
    if-nez v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v2, v3, v1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    aput-boolean v2, v3, v1

    .line 28
    .local v0, "isConnected":Z
    :goto_1
    if-nez p1, :cond_2

    const/4 v1, 0x7

    aput-boolean v2, v3, v1

    .line 32
    :goto_2
    const/16 v1, 0xb

    aput-boolean v2, v3, v1

    return v0

    .line 26
    .end local v0    # "isConnected":Z
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v2, v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    aput-boolean v2, v3, v1

    move v0, v2

    goto :goto_1

    .line 28
    .restart local v0    # "isConnected":Z
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    aput-boolean v2, v3, v1

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    aput-boolean v2, v3, v1

    .line 29
    const v1, 0x7f05002e

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xa

    aput-boolean v2, v3, v1

    goto :goto_2
.end method
