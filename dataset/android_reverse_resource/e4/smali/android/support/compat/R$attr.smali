.class public final Landroid/support/compat/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final font:I = 0x7f040092

.field public static final fontProviderAuthority:I = 0x7f040094

.field public static final fontProviderCerts:I = 0x7f040095

.field public static final fontProviderFetchStrategy:I = 0x7f040096

.field public static final fontProviderFetchTimeout:I = 0x7f040097

.field public static final fontProviderPackage:I = 0x7f040098

.field public static final fontProviderQuery:I = 0x7f040099

.field public static final fontStyle:I = 0x7f04009a

.field public static final fontWeight:I = 0x7f04009b


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/compat/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5eebcee1f0c77bf5L    # 1.7778689099811068E149

    const-string/jumbo v2, "android/support/compat/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/compat/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/compat/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
