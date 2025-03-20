.class final Lcom/batch/android/Batch$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->a(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic e:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 959
    iput-boolean p1, p0, Lcom/batch/android/Batch$14;->a:Z

    iput-object p2, p0, Lcom/batch/android/Batch$14;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/batch/android/Batch$14;->c:Z

    iput-object p4, p0, Lcom/batch/android/Batch$14;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/batch/android/Batch$14;->e:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)Lcom/batch/android/i/d;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 963
    invoke-static {}, Lcom/batch/android/Batch;->d()Lcom/batch/android/Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 965
    const-string v0, "You must set the configuration before starting Batch. Please call setConfig on onCreate of your Application subclass"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 1212
    :cond_0
    :goto_0
    return-object v5

    .line 970
    :cond_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->a()Ljava/lang/Long;

    move-result-object v0

    .line 973
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->i()Ljava/util/Date;

    move-result-object v1

    .line 975
    iget-boolean v4, p0, Lcom/batch/android/Batch$14;->a:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1a

    .line 977
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x7530

    sub-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    move v4, v2

    .line 1002
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 1004
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v1

    const-string v6, "_STOP"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Lcom/batch/android/f/f;->a(Ljava/lang/String;J)V

    .line 1007
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart called on state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", should start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/batch/android/Batch$14;->b:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1011
    const-string v0, "Batch start called with null context, aborting start"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_4
    if-nez v0, :cond_1a

    sget-object v4, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    if-ne p1, v4, :cond_1a

    .line 985
    if-eqz v1, :cond_5

    .line 989
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x4ef6d80

    sub-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-lez v1, :cond_1a

    move v4, v2

    .line 991
    goto :goto_1

    :cond_5
    move v4, v2

    .line 996
    goto :goto_1

    .line 1016
    :cond_6
    iget-boolean v0, p0, Lcom/batch/android/Batch$14;->c:Z

    if-eqz v0, :cond_7

    .line 1018
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->d()V

    .line 1023
    :cond_7
    iget-object v0, p0, Lcom/batch/android/Batch$14;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 1025
    iget-object v0, p0, Lcom/batch/android/Batch$14;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1042
    :try_start_0
    sget-object v1, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v1, :cond_18

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->c()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1043
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->isFloating()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    .line 1060
    :goto_2
    if-eqz v1, :cond_8

    .line 1062
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/i/c;->a(Landroid/app/Activity;)V

    .line 1068
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1069
    if-eqz v1, :cond_9

    .line 1071
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/batch/android/i/c;->a(Landroid/app/Application;)V

    .line 1077
    :cond_9
    invoke-static {}, Lcom/batch/android/Batch;->g()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/batch/android/j;

    invoke-static {}, Lcom/batch/android/Batch;->g()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/batch/android/j;-><init>(Landroid/content/Intent;)V

    .line 1078
    :goto_3
    iget-object v6, p0, Lcom/batch/android/Batch$14;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/batch/android/j;->b(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1079
    iget-object v6, p0, Lcom/batch/android/Batch$14;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1083
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/batch/android/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_a

    .line 1086
    iget-object v4, p0, Lcom/batch/android/Batch$14;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    move v0, v3

    .line 1090
    :goto_4
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/f/d;->i()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1092
    iget-object v4, p0, Lcom/batch/android/Batch$14;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/batch/android/j;->c(Landroid/content/Context;)Lcom/batch/android/BatchMessage;

    move-result-object v4

    .line 1093
    if-eqz v4, :cond_b

    .line 1095
    iget-object v6, p0, Lcom/batch/android/Batch$14;->b:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/batch/android/MessagingActivity;->startActivityForMessage(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V

    .line 1099
    :cond_b
    invoke-static {v5}, Lcom/batch/android/Batch;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1105
    :goto_5
    sget-object v4, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    if-ne p1, v4, :cond_c

    if-eqz v0, :cond_0

    .line 1113
    :cond_c
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-ne p1, v0, :cond_12

    .line 1118
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    iget-object v4, p0, Lcom/batch/android/Batch$14;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/batch/android/i/c;->a(Landroid/content/Context;)V

    .line 1123
    invoke-static {}, Lcom/batch/android/Batch;->h()V

    .line 1128
    const-string v0, "android.permission.INTERNET"

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/batch/android/c/j;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1130
    const-string v0, "Batch needs android.permission.INTERNET, please update your manifest, aborting start"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1046
    :cond_d
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const v8, 0x1010058

    aput v8, v6, v7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1047
    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 1048
    :goto_6
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1052
    :catch_0
    move-exception v6

    move-object v12, v6

    move v6, v1

    move-object v1, v12

    .line 1054
    :goto_7
    const-string v7, "Error while trying to check if the current activity is transparent/floating. Reverting to default behaviour."

    invoke-static {v3, v7, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    move v1, v6

    goto/16 :goto_2

    :cond_e
    move v1, v2

    .line 1047
    goto :goto_6

    .line 1077
    :cond_f
    new-instance v1, Lcom/batch/android/j;

    invoke-direct {v1, v0}, Lcom/batch/android/j;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 1137
    :cond_10
    invoke-static {}, Lcom/batch/android/Batch;->d()Lcom/batch/android/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/batch/android/Config;->a:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1139
    const-string v0, "API key provided in Config is null, aborting start"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1146
    :cond_11
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/g;->a(Landroid/content/Context;)Lcom/batch/android/g;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Lcom/batch/android/g;)Lcom/batch/android/g;

    .line 1147
    new-instance v0, Lcom/batch/android/i;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/batch/android/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Lcom/batch/android/i;)Lcom/batch/android/i;

    .line 1148
    new-instance v0, Lcom/batch/android/o;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/batch/android/o;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Lcom/batch/android/o;)Lcom/batch/android/o;

    .line 1153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1158
    new-instance v0, Lcom/batch/android/Batch$a;

    invoke-direct {v0, v5}, Lcom/batch/android/Batch$a;-><init>(Lcom/batch/android/Batch$1;)V

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 1159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1160
    const-string v4, "com.batch.android.executor.finished"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1161
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v4

    invoke-static {}, Lcom/batch/android/Batch;->i()Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/batch/android/b/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1166
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/batch/android/c/j;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1168
    new-instance v0, Lcom/batch/android/c/w;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/batch/android/c/w;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Lcom/batch/android/c/w;)Lcom/batch/android/c/w;

    .line 1175
    :cond_12
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/c;->d()V

    .line 1179
    iget-boolean v0, p0, Lcom/batch/android/Batch$14;->a:Z

    if-eqz v0, :cond_15

    .line 1181
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->h()V

    move-object v0, v5

    .line 1189
    :goto_8
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v3

    const-string v4, "_START"

    invoke-virtual {v3, v4, v0}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1191
    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/batch/android/Batch$14;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1193
    invoke-virtual {v1}, Lcom/batch/android/j;->a()Lcom/batch/android/c/l;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_16

    .line 1197
    invoke-virtual {v0}, Lcom/batch/android/c/l;->t()Ljava/util/Map;

    move-result-object v0

    .line 1199
    :goto_9
    if-nez v0, :cond_13

    .line 1201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1204
    :cond_13
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v1

    const-string v3, "_OPEN_PUSH"

    invoke-virtual {v1, v3, v0}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1206
    const-string v0, "Activity was opened from a push"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->d(ZLjava/lang/String;)V

    .line 1212
    :cond_14
    sget-object v5, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    goto/16 :goto_0

    .line 1185
    :cond_15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1186
    const-string v4, "silent"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1052
    :catch_1
    move-exception v1

    move v6, v3

    goto/16 :goto_7

    :cond_16
    move-object v0, v5

    goto :goto_9

    :cond_17
    move v0, v4

    goto/16 :goto_4

    :cond_18
    move v1, v3

    goto/16 :goto_2

    :cond_19
    move-object v1, v5

    move v0, v4

    goto/16 :goto_5

    :cond_1a
    move v4, v3

    goto/16 :goto_1
.end method
