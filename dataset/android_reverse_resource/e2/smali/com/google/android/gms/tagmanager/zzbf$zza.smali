.class final enum Lcom/google/android/gms/tagmanager/zzbf$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/tagmanager/zzbf$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic zzbpA:[Lcom/google/android/gms/tagmanager/zzbf$zza;

.field public static final enum zzbpx:Lcom/google/android/gms/tagmanager/zzbf$zza;

.field public static final enum zzbpy:Lcom/google/android/gms/tagmanager/zzbf$zza;

.field public static final enum zzbpz:Lcom/google/android/gms/tagmanager/zzbf$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbf$zza;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzbf$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpx:Lcom/google/android/gms/tagmanager/zzbf$zza;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbf$zza;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/tagmanager/zzbf$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpy:Lcom/google/android/gms/tagmanager/zzbf$zza;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbf$zza;

    const-string v1, "BACKSLASH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/tagmanager/zzbf$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpz:Lcom/google/android/gms/tagmanager/zzbf$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/tagmanager/zzbf$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpx:Lcom/google/android/gms/tagmanager/zzbf$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpy:Lcom/google/android/gms/tagmanager/zzbf$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpz:Lcom/google/android/gms/tagmanager/zzbf$zza;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpA:[Lcom/google/android/gms/tagmanager/zzbf$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/tagmanager/zzbf$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpA:[Lcom/google/android/gms/tagmanager/zzbf$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/tagmanager/zzbf$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/tagmanager/zzbf$zza;

    return-object v0
.end method
