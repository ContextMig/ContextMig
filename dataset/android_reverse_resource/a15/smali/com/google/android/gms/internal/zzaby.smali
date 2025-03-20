.class public Lcom/google/android/gms/internal/zzaby;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaby$zzb;
    }
.end annotation


# static fields
.field public static final zzaDu:Lcom/google/android/gms/common/api/Status;

.field private static final zzaDv:[Lcom/google/android/gms/internal/zzaaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/zzaaf",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "The connection to Google Play services was lost"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzaby;->zzaDu:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaaf;

    sput-object v0, Lcom/google/android/gms/internal/zzaby;->zzaDv:[Lcom/google/android/gms/internal/zzaaf;

    return-void
.end method
