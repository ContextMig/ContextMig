.class Lorg/asdtm/goodweather/BitcoinDonationDialog$1;
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

    sget-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1ec52f9a213893caL    # -2.356135142605189E160

    const-string v2, "org/asdtm/goodweather/BitcoinDonationDialog$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/BitcoinDonationDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iput-object p1, p0, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;->this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;

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

    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;->this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "1FV8m1MKqZ9ZKB8YNwpsjsuubHTznJSiT8"

    invoke-static {v1, v2}, Lorg/asdtm/goodweather/utils/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 39
    iget-object v1, p0, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;->this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080064

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 41
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 42
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method
