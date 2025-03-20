.class public final enum Lcom/fsck/k9/mail/ServerSettings$Type;
.super Ljava/lang/Enum;
.source "ServerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/ServerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/ServerSettings$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/ServerSettings$Type;

.field public static final enum IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

.field public static final enum POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

.field public static final enum SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

.field public static final enum WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;


# instance fields
.field public final defaultPort:I

.field public final defaultTlsPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings$Type;

    const-string v1, "IMAP"

    const/16 v2, 0x8f

    const/16 v3, 0x3e1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/fsck/k9/mail/ServerSettings$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 23
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings$Type;

    const-string v1, "SMTP"

    const/16 v2, 0x24b

    const/16 v3, 0x1d1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fsck/k9/mail/ServerSettings$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 24
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings$Type;

    const-string v1, "WebDAV"

    const/16 v2, 0x50

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/fsck/k9/mail/ServerSettings$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 25
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings$Type;

    const-string v1, "POP3"

    const/16 v2, 0x6e

    const/16 v3, 0x3e3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/fsck/k9/mail/ServerSettings$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/mail/ServerSettings$Type;

    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->$VALUES:[Lcom/fsck/k9/mail/ServerSettings$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "defaultPort"    # I
    .param p4, "defaultTlsPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultPort:I

    .line 41
    iput p4, p0, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultTlsPort:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/ServerSettings$Type;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/ServerSettings$Type;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->$VALUES:[Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/ServerSettings$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/ServerSettings$Type;

    return-object v0
.end method
