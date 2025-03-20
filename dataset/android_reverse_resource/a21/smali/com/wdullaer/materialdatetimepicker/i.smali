.class public Lcom/wdullaer/materialdatetimepicker/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/h/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/h/q;

    invoke-direct {v0}, Landroid/support/v4/h/q;-><init>()V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/i;->a:Landroid/support/v4/h/q;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/i;->a:Landroid/support/v4/h/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/i;->a:Landroid/support/v4/h/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/q;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/%s.ttf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v2, Lcom/wdullaer/materialdatetimepicker/i;->a:Landroid/support/v4/h/q;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/h/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/i;->a:Landroid/support/v4/h/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
