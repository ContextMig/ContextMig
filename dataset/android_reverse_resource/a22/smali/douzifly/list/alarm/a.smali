.class public final Ldouzifly/list/alarm/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldouzifly/list/alarm/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldouzifly/list/alarm/a;

    invoke-direct {v0}, Ldouzifly/list/alarm/a;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Ldouzifly/list/alarm/a;

    sput-object p0, Ldouzifly/list/alarm/a;->a:Ldouzifly/list/alarm/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Ldouzifly/list/b/b;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "isComplete=0 and reminderTime>0"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    sget-object v1, Ldouzifly/list/alarm/a;->a:Ldouzifly/list/alarm/a;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ldouzifly/list/b/b;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ldouzifly/list/b/b;->d()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Ldouzifly/list/alarm/a;->a(JJLjava/lang/String;I)V

    :cond_0
    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(JJLjava/lang/String;I)V
    .locals 5

    const-string v0, "title"

    invoke-static {p5, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlarm id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oooo"

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v0}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ClearAlarmPro"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "color"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "id"

    long-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v2}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v2

    long-to-int v3, p1

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
