.class public final enum Lcom/fsck/k9/mail/AuthType;
.super Ljava/lang/Enum;
.source "AuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/AuthType;

.field public static final enum AUTOMATIC:Lcom/fsck/k9/mail/AuthType;

.field public static final enum CRAM_MD5:Lcom/fsck/k9/mail/AuthType;

.field public static final enum EXTERNAL:Lcom/fsck/k9/mail/AuthType;

.field public static final enum LOGIN:Lcom/fsck/k9/mail/AuthType;

.field public static final enum PLAIN:Lcom/fsck/k9/mail/AuthType;

.field public static final enum XOAUTH2:Lcom/fsck/k9/mail/AuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/fsck/k9/mail/AuthType;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 16
    new-instance v0, Lcom/fsck/k9/mail/AuthType;

    const-string v1, "CRAM_MD5"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/AuthType;->CRAM_MD5:Lcom/fsck/k9/mail/AuthType;

    .line 17
    new-instance v0, Lcom/fsck/k9/mail/AuthType;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mail/AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    .line 24
    new-instance v0, Lcom/fsck/k9/mail/AuthType;

    const-string v1, "XOAUTH2"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 32
    new-instance v0, Lcom/fsck/k9/mail/AuthType;

    const-string v1, "AUTOMATIC"

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mail/AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/AuthType;->AUTOMATIC:Lcom/fsck/k9/mail/AuthType;

    .line 33
    new-instance v0, Lcom/fsck/k9/mail/AuthType;

    const-string v1, "LOGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/AuthType;->LOGIN:Lcom/fsck/k9/mail/AuthType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fsck/k9/mail/AuthType;

    sget-object v1, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mail/AuthType;->CRAM_MD5:Lcom/fsck/k9/mail/AuthType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mail/AuthType;->AUTOMATIC:Lcom/fsck/k9/mail/AuthType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/mail/AuthType;->LOGIN:Lcom/fsck/k9/mail/AuthType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/AuthType;->$VALUES:[Lcom/fsck/k9/mail/AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fsck/k9/mail/AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/AuthType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/AuthType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fsck/k9/mail/AuthType;->$VALUES:[Lcom/fsck/k9/mail/AuthType;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/AuthType;

    return-object v0
.end method
