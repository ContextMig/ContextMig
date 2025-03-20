.class public Lcom/dropbox/sync/android/DbxPrincipal;
.super Ljava/lang/Object;
.source "DbxPrincipal.java"


# static fields
.field public static final PUBLIC:Lcom/dropbox/sync/android/DbxPrincipal;

.field public static final TEAM:Lcom/dropbox/sync/android/DbxPrincipal;


# instance fields
.field private final mPrin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/dropbox/sync/android/DbxPrincipal;

    const-string v1, "team"

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxPrincipal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxPrincipal;->TEAM:Lcom/dropbox/sync/android/DbxPrincipal;

    .line 30
    new-instance v0, Lcom/dropbox/sync/android/DbxPrincipal;

    const-string v1, "public"

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxPrincipal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxPrincipal;->PUBLIC:Lcom/dropbox/sync/android/DbxPrincipal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "prin"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxPrincipal;->mPrin:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxPrincipal;
    .locals 1
    .param p0, "prin"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "team"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dropbox/sync/android/DbxPrincipal;->TEAM:Lcom/dropbox/sync/android/DbxPrincipal;

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dropbox/sync/android/DbxPrincipal;->PUBLIC:Lcom/dropbox/sync/android/DbxPrincipal;

    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxPrincipal;->mPrin:Ljava/lang/String;

    return-object v0
.end method
