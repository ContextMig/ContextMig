.class public Lde/baumann/browser/Unit/IntentUnit;
.super Ljava/lang/Object;
.source "IntentUnit.java"


# static fields
.field private static final INTENT_TYPE_MESSAGE_RFC822:Ljava/lang/String; = "message/rfc822"

.field public static final REQUEST_CLEAR:I = 0x102

.field public static final REQUEST_DATA:I = 0x104

.field public static final REQUEST_FILE_21:I = 0x101

.field public static final REQUEST_START:I = 0x103

.field public static final REQUEST_UI:I = 0x105

.field private static clear:Z = false

.field private static context:Landroid/content/Context; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static dbChange:Z = false

.field private static spChange:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 45
    sget-object v0, Lde/baumann/browser/Unit/IntentUnit;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getEmailIntent(Landroid/net/MailTo;)Landroid/content/Intent;
    .locals 5

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    .line 21
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 22
    invoke-virtual {p0}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 23
    invoke-virtual {p0}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    .line 24
    invoke-virtual {p0}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "message/rfc822"

    .line 25
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static isClear()Z
    .locals 1

    .line 50
    sget-boolean v0, Lde/baumann/browser/Unit/IntentUnit;->clear:Z

    return v0
.end method

.method public static isDBChange()Z
    .locals 1

    .line 58
    sget-boolean v0, Lde/baumann/browser/Unit/IntentUnit;->dbChange:Z

    return v0
.end method

.method public static isSPChange()Z
    .locals 1

    .line 66
    sget-boolean v0, Lde/baumann/browser/Unit/IntentUnit;->spChange:Z

    return v0
.end method

.method public static declared-synchronized setClear(Z)V
    .locals 1

    const-class v0, Lde/baumann/browser/Unit/IntentUnit;

    monitor-enter v0

    .line 53
    :try_start_0
    sput-boolean p0, Lde/baumann/browser/Unit/IntentUnit;->clear:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 42
    sput-object p0, Lde/baumann/browser/Unit/IntentUnit;->context:Landroid/content/Context;

    return-void
.end method

.method public static setDBChange(Z)V
    .locals 0

    .line 61
    sput-boolean p0, Lde/baumann/browser/Unit/IntentUnit;->dbChange:Z

    return-void
.end method

.method public static setSPChange(Z)V
    .locals 0

    .line 69
    sput-boolean p0, Lde/baumann/browser/Unit/IntentUnit;->spChange:Z

    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f0e0065

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
