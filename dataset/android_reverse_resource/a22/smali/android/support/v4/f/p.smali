.class public Landroid/support/v4/f/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Locale;

.field private static final b:Landroid/support/v4/f/q;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/f/r;

    invoke-direct {v0, v2}, Landroid/support/v4/f/r;-><init>(Landroid/support/v4/f/p$1;)V

    sput-object v0, Landroid/support/v4/f/p;->b:Landroid/support/v4/f/q;

    :goto_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/f/p;->a:Ljava/util/Locale;

    const-string v0, "Arab"

    sput-object v0, Landroid/support/v4/f/p;->c:Ljava/lang/String;

    const-string v0, "Hebr"

    sput-object v0, Landroid/support/v4/f/p;->d:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/f/q;

    invoke-direct {v0, v2}, Landroid/support/v4/f/q;-><init>(Landroid/support/v4/f/p$1;)V

    sput-object v0, Landroid/support/v4/f/p;->b:Landroid/support/v4/f/q;

    goto :goto_0
.end method

.method public static a(Ljava/util/Locale;)I
    .locals 1

    sget-object v0, Landroid/support/v4/f/p;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/f/q;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/f/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/f/p;->d:Ljava/lang/String;

    return-object v0
.end method
