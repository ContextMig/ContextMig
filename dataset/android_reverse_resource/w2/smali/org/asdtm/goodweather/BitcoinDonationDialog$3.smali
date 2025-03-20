.class Lorg/asdtm/goodweather/BitcoinDonationDialog$3;
.super Ljava/lang/Object;
.source "BitcoinDonationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    sget-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c25ac1ac1689e00L    # -5.659722856879404E-136

    const-string v2, "org/asdtm/goodweather/BitcoinDonationDialog$3"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/BitcoinDonationDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog$3;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iput-object p1, p0, Lorg/asdtm/goodweather/BitcoinDonationDialog$3;->this$0:Lorg/asdtm/goodweather/BitcoinDonationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog$3;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 68
    aput-boolean v1, v0, v1

    return-void
.end method
