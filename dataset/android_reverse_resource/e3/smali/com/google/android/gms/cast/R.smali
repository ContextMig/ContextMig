.class public final Lcom/google/android/gms/cast/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/R$styleable;,
        Lcom/google/android/gms/cast/R$style;,
        Lcom/google/android/gms/cast/R$string;,
        Lcom/google/android/gms/cast/R$raw;,
        Lcom/google/android/gms/cast/R$integer;,
        Lcom/google/android/gms/cast/R$id;,
        Lcom/google/android/gms/cast/R$drawable;,
        Lcom/google/android/gms/cast/R$color;,
        Lcom/google/android/gms/cast/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/cast/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4c8ad21972176b42L    # -8.237443917625383E-61

    const-string v2, "com/google/android/gms/cast/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/cast/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
