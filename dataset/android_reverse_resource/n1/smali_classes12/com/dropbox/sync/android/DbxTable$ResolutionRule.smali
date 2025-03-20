.class public final enum Lcom/dropbox/sync/android/DbxTable$ResolutionRule;
.super Ljava/lang/Enum;
.source "DbxTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResolutionRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxTable$ResolutionRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

.field public static final enum LOCAL:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

.field public static final enum MAX:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

.field public static final enum MIN:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

.field public static final enum REMOTE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

.field public static final enum SUM:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;


# instance fields
.field private final mNativeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    const-string v1, "REMOTE"

    const-string v2, "remote"

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->REMOTE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    .line 41
    new-instance v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    const-string v1, "LOCAL"

    const-string v2, "local"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->LOCAL:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    .line 47
    new-instance v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    const-string v1, "MAX"

    const-string v2, "max"

    invoke-direct {v0, v1, v5, v2}, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->MAX:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    .line 53
    new-instance v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    const-string v1, "MIN"

    const-string v2, "min"

    invoke-direct {v0, v1, v6, v2}, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->MIN:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    .line 64
    new-instance v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    const-string v1, "SUM"

    const-string v2, "sum"

    invoke-direct {v0, v1, v7, v2}, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->SUM:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    sget-object v1, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->REMOTE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->LOCAL:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->MAX:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->MIN:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->SUM:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->$VALUES:[Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "nativeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->mNativeString:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable$ResolutionRule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxTable$ResolutionRule;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->$VALUES:[Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    return-object v0
.end method


# virtual methods
.method toNativeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->mNativeString:Ljava/lang/String;

    return-object v0
.end method
