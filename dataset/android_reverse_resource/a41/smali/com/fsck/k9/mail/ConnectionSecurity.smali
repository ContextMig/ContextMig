.class public final enum Lcom/fsck/k9/mail/ConnectionSecurity;
.super Ljava/lang/Enum;
.source "ConnectionSecurity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/ConnectionSecurity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/ConnectionSecurity;

.field public static final enum NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

.field public static final enum SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

.field public static final enum STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fsck/k9/mail/ConnectionSecurity;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/ConnectionSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 5
    new-instance v0, Lcom/fsck/k9/mail/ConnectionSecurity;

    const-string v1, "STARTTLS_REQUIRED"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/ConnectionSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 6
    new-instance v0, Lcom/fsck/k9/mail/ConnectionSecurity;

    const-string v1, "SSL_TLS_REQUIRED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/ConnectionSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/mail/ConnectionSecurity;

    sget-object v1, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->$VALUES:[Lcom/fsck/k9/mail/ConnectionSecurity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/ConnectionSecurity;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->$VALUES:[Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/ConnectionSecurity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/ConnectionSecurity;

    return-object v0
.end method
