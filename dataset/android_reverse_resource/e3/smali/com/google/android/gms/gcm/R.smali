.class public final Lcom/google/android/gms/gcm/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/R$styleable;,
        Lcom/google/android/gms/gcm/R$style;,
        Lcom/google/android/gms/gcm/R$string;,
        Lcom/google/android/gms/gcm/R$raw;,
        Lcom/google/android/gms/gcm/R$integer;,
        Lcom/google/android/gms/gcm/R$id;,
        Lcom/google/android/gms/gcm/R$drawable;,
        Lcom/google/android/gms/gcm/R$color;,
        Lcom/google/android/gms/gcm/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/gcm/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5f686f2aea75a16fL    # 3.999141992932494E151

    const-string v2, "com/google/android/gms/gcm/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/gcm/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
