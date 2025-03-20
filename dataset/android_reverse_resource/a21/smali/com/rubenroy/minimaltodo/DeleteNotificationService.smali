.class public Lcom/rubenroy/minimaltodo/DeleteNotificationService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lcom/rubenroy/minimaltodo/w;

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/rubenroy/minimaltodo/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "DeleteNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "com.avjindersekhon.datasetchanged"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.avjinder.changeoccured"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->a:Lcom/rubenroy/minimaltodo/w;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/w;->b(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->a:Lcom/rubenroy/minimaltodo/w;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/w;->a()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->b()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Lcom/rubenroy/minimaltodo/w;

    const-string v1, "todoitems.json"

    invoke-direct {v0, p0, v1}, Lcom/rubenroy/minimaltodo/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->a:Lcom/rubenroy/minimaltodo/w;

    const-string v0, "com.avjindersekhon.todonotificationserviceuuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->c()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v1}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->c:Lcom/rubenroy/minimaltodo/x;

    :cond_1
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->c:Lcom/rubenroy/minimaltodo/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->c:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->a()V

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/DeleteNotificationService;->b()V

    :cond_2
    return-void
.end method
