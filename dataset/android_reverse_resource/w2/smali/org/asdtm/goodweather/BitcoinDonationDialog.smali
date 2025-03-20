.class public Lorg/asdtm/goodweather/BitcoinDonationDialog;
.super Landroid/app/DialogFragment;
.source "BitcoinDonationDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6a3720f66c6447e0L    # 4.5322038784633325E203

    const-string v2, "org/asdtm/goodweather/BitcoinDonationDialog"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/BitcoinDonationDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static newInstance()Lorg/asdtm/goodweather/BitcoinDonationDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    new-instance v1, Lorg/asdtm/goodweather/BitcoinDonationDialog;

    invoke-direct {v1}, Lorg/asdtm/goodweather/BitcoinDonationDialog;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->$jacocoInit()[Z

    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v6, v3, v1

    .line 29
    const v1, 0x7f040030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/4 v0, 0x3

    aput-boolean v6, v3, v0

    .line 30
    const v0, 0x7f0f009f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    aput-boolean v6, v3, v1

    .line 31
    const v1, 0x7f0f00a1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x5

    aput-boolean v6, v3, v2

    .line 32
    const v2, 0x7f0f00a2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v5, 0x6

    aput-boolean v6, v3, v5

    .line 34
    const-string v5, "1FV8m1MKqZ9ZKB8YNwpsjsuubHTznJSiT8"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    aput-boolean v6, v3, v0

    .line 35
    new-instance v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/BitcoinDonationDialog$1;-><init>(Lorg/asdtm/goodweather/BitcoinDonationDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    aput-boolean v6, v3, v0

    .line 44
    new-instance v0, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/BitcoinDonationDialog$2;-><init>(Lorg/asdtm/goodweather/BitcoinDonationDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x9

    aput-boolean v6, v3, v0

    .line 59
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    aput-boolean v6, v3, v1

    .line 60
    const-string v1, "Bitcoin"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0xb

    aput-boolean v6, v3, v1

    .line 61
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0xc

    aput-boolean v6, v3, v1

    .line 62
    const/high16 v1, 0x1040000

    new-instance v2, Lorg/asdtm/goodweather/BitcoinDonationDialog$3;

    invoke-direct {v2, p0}, Lorg/asdtm/goodweather/BitcoinDonationDialog$3;-><init>(Lorg/asdtm/goodweather/BitcoinDonationDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0xd

    aput-boolean v6, v3, v1

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0xe

    aput-boolean v6, v3, v1

    return-object v0
.end method
