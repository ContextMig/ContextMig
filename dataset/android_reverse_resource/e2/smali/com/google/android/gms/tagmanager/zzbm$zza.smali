.class public final enum Lcom/google/android/gms/tagmanager/zzbm$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/tagmanager/zzbm$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzbpF:Lcom/google/android/gms/tagmanager/zzbm$zza;

.field public static final enum zzbpG:Lcom/google/android/gms/tagmanager/zzbm$zza;

.field public static final enum zzbpH:Lcom/google/android/gms/tagmanager/zzbm$zza;

.field private static final synthetic zzbpI:[Lcom/google/android/gms/tagmanager/zzbm$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbm$zza;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzbm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpF:Lcom/google/android/gms/tagmanager/zzbm$zza;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbm$zza;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/tagmanager/zzbm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpG:Lcom/google/android/gms/tagmanager/zzbm$zza;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbm$zza;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/tagmanager/zzbm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpH:Lcom/google/android/gms/tagmanager/zzbm$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/tagmanager/zzbm$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpF:Lcom/google/android/gms/tagmanager/zzbm$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpG:Lcom/google/android/gms/tagmanager/zzbm$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpH:Lcom/google/android/gms/tagmanager/zzbm$zza;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpI:[Lcom/google/android/gms/tagmanager/zzbm$zza;

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

.method public static values()[Lcom/google/android/gms/tagmanager/zzbm$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbm$zza;->zzbpI:[Lcom/google/android/gms/tagmanager/zzbm$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/tagmanager/zzbm$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/tagmanager/zzbm$zza;

    return-object v0
.end method
