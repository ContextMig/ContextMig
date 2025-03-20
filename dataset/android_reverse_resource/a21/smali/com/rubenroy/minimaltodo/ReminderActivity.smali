.class public Lcom/rubenroy/minimaltodo/ReminderActivity;
.super Landroid/support/v7/a/u;


# instance fields
.field i:Ljava/lang/String;

.field j:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Lfr/ganfra/materialspinner/MaterialSpinner;

.field private n:[Ljava/lang/String;

.field private o:Lcom/rubenroy/minimaltodo/w;

.field private p:Ljava/util/ArrayList;

.field private q:Lcom/rubenroy/minimaltodo/x;

.field private r:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/a/u;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/ReminderActivity;)Lcom/rubenroy/minimaltodo/x;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->q:Lcom/rubenroy/minimaltodo/x;

    return-object v0
.end method

.method private a(I)Ljava/util/Date;
    .locals 5

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->j:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v1, "Action"

    const-string v2, "Snoozed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/rubenroy/minimaltodo/ReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/rubenroy/minimaltodo/ReminderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/rubenroy/minimaltodo/ReminderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->m()V

    return-void
.end method

.method static synthetic e(Lcom/rubenroy/minimaltodo/ReminderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.avjindersekhon.datasetchanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.avjindersekhon.exit"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private k()V
    .locals 3

    const-string v0, "com.avjindersekhon.datasetchanged"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.avjinder.changeoccured"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private l()I
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->m:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-virtual {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3c

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private m()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->o:Lcom/rubenroy/minimaltodo/w;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->p:Ljava/util/ArrayList;

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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->j:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->j:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    invoke-virtual {v0, p0}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;)V

    const-string v0, "com.avjindersekhon.themepref"

    invoke-virtual {p0, v0, v4}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjindersekhon.savedtheme"

    const-string v2, "com.avjindersekon.lighttheme"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->i:Ljava/lang/String;

    const-string v1, "com.avjindersekon.lighttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->setTheme(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->setContentView(I)V

    new-instance v0, Lcom/rubenroy/minimaltodo/w;

    const-string v1, "todoitems.json"

    invoke-direct {v0, p0, v1}, Lcom/rubenroy/minimaltodo/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->o:Lcom/rubenroy/minimaltodo/w;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->o:Lcom/rubenroy/minimaltodo/w;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/w;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->p:Ljava/util/ArrayList;

    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.avjindersekhon.todonotificationserviceuuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->q:Lcom/rubenroy/minimaltodo/x;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->p:Ljava/util/ArrayList;

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

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->q:Lcom/rubenroy/minimaltodo/x;

    :cond_1
    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->n:[Ljava/lang/String;

    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->l:Landroid/widget/Button;

    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lfr/ganfra/materialspinner/MaterialSpinner;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->m:Lfr/ganfra/materialspinner/MaterialSpinner;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->q:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v1}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->i:Ljava/lang/String;

    const-string v1, "com.avjindersekon.lighttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/rubenroy/minimaltodo/u;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/u;-><init>(Lcom/rubenroy/minimaltodo/ReminderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f040043

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->n:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x7f040042

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->m:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-virtual {v1, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    :cond_2
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->r:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f020058

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/a/u;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->l()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/rubenroy/minimaltodo/ReminderActivity;->a(I)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->q:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v2, v1}, Lcom/rubenroy/minimaltodo/x;->a(Ljava/util/Date;)V

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/ReminderActivity;->q:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v2, v0}, Lcom/rubenroy/minimaltodo/x;->a(Z)V

    const-string v2, "OskarSchindler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->k()V

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->m()V

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->j()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b9
        :pswitch_0
    .end packed-switch
.end method
