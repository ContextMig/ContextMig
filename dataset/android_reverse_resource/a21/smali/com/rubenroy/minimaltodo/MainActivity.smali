.class public Lcom/rubenroy/minimaltodo/MainActivity;
.super Landroid/support/v7/a/u;


# instance fields
.field public i:Landroid/support/v7/widget/a/a;

.field private j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

.field private k:Landroid/support/design/widget/FloatingActionButton;

.field private l:Ljava/util/ArrayList;

.field private m:Landroid/support/design/widget/CoordinatorLayout;

.field private n:Lcom/rubenroy/minimaltodo/o;

.field private o:Lcom/rubenroy/minimaltodo/x;

.field private p:I

.field private q:Lcom/rubenroy/minimaltodo/w;

.field private r:Lcom/rubenroy/minimaltodo/j;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

.field private v:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/a/u;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->s:I

    const-string v0, "name_of_the_theme"

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->t:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Clean my room"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Water the plants"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Get car washed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Get my dry cleaning"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->v:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->p:I

    return p1
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/AnalyticsApplication;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->u:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/MainActivity;Lcom/rubenroy/minimaltodo/x;)Lcom/rubenroy/minimaltodo/x;
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->o:Lcom/rubenroy/minimaltodo/x;

    return-object p1
.end method

.method public static a(Lcom/rubenroy/minimaltodo/w;)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/w;->a()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;IJ)V
    .locals 3

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->k()Landroid/app/AlarmManager;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/MainActivity;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rubenroy/minimaltodo/MainActivity;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/MainActivity;Landroid/content/Intent;IJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Landroid/content/Intent;IJ)V

    return-void
.end method

.method private a(Lcom/rubenroy/minimaltodo/x;)V
    .locals 2

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->n:Lcom/rubenroy/minimaltodo/o;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/o;->c(I)V

    return-void
.end method

.method private a(Landroid/content/Intent;I)Z
    .locals 1

    const/high16 v0, 0x20000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/rubenroy/minimaltodo/MainActivity;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->k:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method private b(Landroid/content/Intent;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->k()Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "OskarSchindler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PI Cancelled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Landroid/content/Intent;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->o:Lcom/rubenroy/minimaltodo/x;

    return-object v0
.end method

.method static synthetic d(Lcom/rubenroy/minimaltodo/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->p:I

    return v0
.end method

.method static synthetic e(Lcom/rubenroy/minimaltodo/MainActivity;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->m:Landroid/support/design/widget/CoordinatorLayout;

    return-object v0
.end method

.method private j()V
    .locals 6

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/rubenroy/minimaltodo/x;->a(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rubenroy/minimaltodo/TodoNotificationService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.avjindersekhon.todonotificationserviceuuid"

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "com.avjindersekhon.todonotificationservicetext"

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Landroid/content/Intent;IJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private k()Landroid/app/AlarmManager;
    .locals 1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string v0, "com.avjindersinghsekhon.com.avjindersinghsekhon.minimaltodo.MainActivity"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rubenroy/minimaltodo/TodoNotificationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.avjindersekhon.todonotificationservicetext"

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.avjindersekhon.todonotificationserviceuuid"

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Landroid/content/Intent;IJ)V

    :cond_2
    move v2, v3

    :goto_1
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v4

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v1}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->n:Lcom/rubenroy/minimaltodo/o;

    invoke-virtual {v1}, Lcom/rubenroy/minimaltodo/o;->c()V

    :cond_3
    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/x;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->u:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v0, "com.avjindersekhon.themepref"

    invoke-virtual {p0, v0, v3}, Lcom/rubenroy/minimaltodo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjindersekhon.savedtheme"

    const-string v2, "com.avjindersekon.lighttheme"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->t:Ljava/lang/String;

    const-string v1, "com.avjindersekon.lighttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00b8

    iput v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->s:I

    :goto_0
    iget v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->s:I

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->setContentView(I)V

    const-string v0, "com.avjindersekhon.datasetchanged"

    invoke-virtual {p0, v0, v3}, Lcom/rubenroy/minimaltodo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.avjinder.changeoccured"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lcom/rubenroy/minimaltodo/w;

    const-string v1, "todoitems.json"

    invoke-direct {v0, p0, v1}, Lcom/rubenroy/minimaltodo/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->q:Lcom/rubenroy/minimaltodo/w;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->q:Lcom/rubenroy/minimaltodo/w;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/w;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    new-instance v0, Lcom/rubenroy/minimaltodo/o;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/rubenroy/minimaltodo/o;-><init>(Lcom/rubenroy/minimaltodo/MainActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->n:Lcom/rubenroy/minimaltodo/o;

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->j()V

    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->m:Landroid/support/design/widget/CoordinatorLayout;

    const v0, 0x7f0e007c

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->k:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->k:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/rubenroy/minimaltodo/m;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/m;-><init>(Lcom/rubenroy/minimaltodo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e007b

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->t:Ljava/lang/String;

    const-string v1, "com.avjindersekon.lighttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    const v1, 0x7f0e007a

    invoke-virtual {p0, v1}, Lcom/rubenroy/minimaltodo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    new-instance v1, Landroid/support/v7/widget/av;

    invoke-direct {v1}, Landroid/support/v7/widget/av;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setItemAnimator(Landroid/support/v7/widget/cs;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    new-instance v1, Landroid/support/v7/widget/bj;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/cy;)V

    new-instance v0, Lcom/rubenroy/minimaltodo/n;

    invoke-direct {v0, p0}, Lcom/rubenroy/minimaltodo/n;-><init>(Lcom/rubenroy/minimaltodo/MainActivity;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->r:Lcom/rubenroy/minimaltodo/j;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->r:Lcom/rubenroy/minimaltodo/j;

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->a(Landroid/support/v7/widget/dc;)V

    new-instance v0, Lcom/rubenroy/minimaltodo/k;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->n:Lcom/rubenroy/minimaltodo/o;

    invoke-direct {v0, v1}, Lcom/rubenroy/minimaltodo/k;-><init>(Lcom/rubenroy/minimaltodo/l;)V

    new-instance v1, Landroid/support/v7/widget/a/a;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/a/a;-><init>(Landroid/support/v7/widget/a/g;)V

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->i:Landroid/support/v7/widget/a/a;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->i:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/ch;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->n:Lcom/rubenroy/minimaltodo/o;

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/co;)V

    return-void

    :cond_1
    const v0, 0x7f0b00b7

    iput v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->s:I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/a/u;->onDestroy()V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->r:Lcom/rubenroy/minimaltodo/j;

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->b(Landroid/support/v7/widget/dc;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rubenroy/minimaltodo/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rubenroy/minimaltodo/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rubenroy/minimaltodo/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rubenroy/minimaltodo/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/a/u;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->q:Lcom/rubenroy/minimaltodo/w;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/w;->b(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v7/a/u;->onResume()V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->u:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    invoke-virtual {v0, p0}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;)V

    const-string v0, "com.avjindersekhon.datasetchanged"

    invoke-virtual {p0, v0, v2}, Lcom/rubenroy/minimaltodo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjindersekhon.exit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.avjindersekhon.exit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->finish()V

    :cond_0
    const-string v0, "com.avjindersekhon.themepref"

    invoke-virtual {p0, v0, v2}, Lcom/rubenroy/minimaltodo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjindersekhon.recreateactivity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.avjindersekhon.themepref"

    invoke-virtual {p0, v0, v2}, Lcom/rubenroy/minimaltodo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.avjindersekhon.recreateactivity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->recreate()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/MainActivity;->u:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    invoke-super {p0}, Landroid/support/v7/a/u;->onStart()V

    const-string v0, "com.avjindersekhon.datasetchanged"

    invoke-virtual {p0, v0, v3}, Lcom/rubenroy/minimaltodo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjinder.changeoccured"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->q:Lcom/rubenroy/minimaltodo/w;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/w;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubenroy/minimaltodo/o;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/MainActivity;->l:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubenroy/minimaltodo/o;-><init>(Lcom/rubenroy/minimaltodo/MainActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->n:Lcom/rubenroy/minimaltodo/o;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/MainActivity;->j:Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/MainActivity;->n:Lcom/rubenroy/minimaltodo/o;

    invoke-virtual {v1, v2}, Lcom/rubenroy/minimaltodo/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/co;)V

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/MainActivity;->j()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.avjinder.changeoccured"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
