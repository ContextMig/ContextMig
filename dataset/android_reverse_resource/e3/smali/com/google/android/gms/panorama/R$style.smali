.class public final Lcom/google/android/gms/panorama/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/panorama/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final Theme_IAPTheme:I = 0x7f0800bc

.field public static final WalletFragmentDefaultButtonTextAppearance:I = 0x7f0800c2

.field public static final WalletFragmentDefaultDetailsHeaderTextAppearance:I = 0x7f0800c3

.field public static final WalletFragmentDefaultDetailsTextAppearance:I = 0x7f0800c4

.field public static final WalletFragmentDefaultStyle:I = 0x7f0800c5


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/panorama/R$style;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x562413f7027604e9L    # 9.209767454299897E106

    const-string v2, "com/google/android/gms/panorama/R$style"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/panorama/R$style;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/panorama/R$style;->$jacocoInit()[Z

    move-result-object v0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
