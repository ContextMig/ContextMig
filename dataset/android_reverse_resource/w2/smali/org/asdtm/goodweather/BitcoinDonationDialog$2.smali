.class Lorg/asdtm/goodweather/BitcoinDonationDialog$2;
.super Ljava/lang/Object;
.source "BitcoinDonationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/BitcoinDonationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x193103ef1b67e07L    # -9.689297246164808E300

    const-string v2, "org/asdtm/goodweather/BitcoinDonationDialog$2"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/BitcoinDonationDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iput-object p1, p0, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;->this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 49
    const-string v2, "bitcoin:1FV8m1MKqZ9ZKB8YNwpsjsuubHTznJSiT8"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 50
    iget-object v2, p0, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;->this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;

    invoke-virtual {v2, v1}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 56
    :goto_0
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void

    .line 51
    :catch_0
    move-exception v1

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 52
    iget-object v1, p0, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;->this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080064

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 54
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
