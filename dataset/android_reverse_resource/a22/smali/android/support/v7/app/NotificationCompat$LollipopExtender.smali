.class Landroid/support/v7/app/NotificationCompat$LollipopExtender;
.super Landroid/support/v4/app/bc;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/NotificationCompat$LollipopExtender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/bb;Landroid/support/v4/app/aw;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p1, Landroid/support/v4/app/bb;->mStyle:Landroid/support/v4/app/bo;

    invoke-static {p2, v0}, Landroid/support/v7/app/NotificationCompat;->access$500(Landroid/support/v4/app/aw;Landroid/support/v4/app/bo;)V

    invoke-interface {p2}, Landroid/support/v4/app/aw;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
