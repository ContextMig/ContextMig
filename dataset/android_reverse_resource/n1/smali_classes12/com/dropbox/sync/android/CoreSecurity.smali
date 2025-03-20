.class Lcom/dropbox/sync/android/CoreSecurity;
.super Ljava/lang/Object;
.source "CoreSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreSecurity$FixedSecureRandom;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/dropbox/sync/android/CoreSecurity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreSecurity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dropbox/sync/android/CoreSecurity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecureRandom()Ljava/security/SecureRandom;
    .locals 3

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 36
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    sget-object v1, Lcom/dropbox/sync/android/CoreSecurity;->TAG:Ljava/lang/String;

    const-string v2, "Using LinuxPRNGSecureRandom to work around OpenSSL seeding issue."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/dropbox/sync/android/CoreSecurity$FixedSecureRandom;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreSecurity$FixedSecureRandom;-><init>()V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method
