.class Lcom/android/settings_ex/dndmode/i;
.super Ljava/lang/Object;
.source "AutoTimeSettingsFragment.java"

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic aaw:Lcom/android/settings_ex/dndmode/h;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dndmode/h;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/h;->a(Lcom/android/settings_ex/dndmode/h;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/android/settings_ex/dndmode/h;->a(Lcom/android/settings_ex/dndmode/h;I)I

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/h;->b(Lcom/android/settings_ex/dndmode/h;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v1}, Lcom/android/settings_ex/dndmode/h;->c(Lcom/android/settings_ex/dndmode/h;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setStartTimeForQuietMode(Landroid/content/Context;I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/h;->d(Lcom/android/settings_ex/dndmode/h;)Lcom/android/settings_ex/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    iget-object v2, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v2}, Lcom/android/settings_ex/dndmode/h;->c(Lcom/android/settings_ex/dndmode/h;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/dndmode/h;->b(Lcom/android/settings_ex/dndmode/h;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/h;->b(Lcom/android/settings_ex/dndmode/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/h;->b(Lcom/android/settings_ex/dndmode/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/m;->bv(Landroid/content/Context;)V

    .line 71
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/android/settings_ex/dndmode/h;->c(Lcom/android/settings_ex/dndmode/h;I)I

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/h;->b(Lcom/android/settings_ex/dndmode/h;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v1}, Lcom/android/settings_ex/dndmode/h;->e(Lcom/android/settings_ex/dndmode/h;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setEndTimeForQuietMode(Landroid/content/Context;I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/h;->f(Lcom/android/settings_ex/dndmode/h;)Lcom/android/settings_ex/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    iget-object v2, p0, Lcom/android/settings_ex/dndmode/i;->aaw:Lcom/android/settings_ex/dndmode/h;

    invoke-static {v2}, Lcom/android/settings_ex/dndmode/h;->e(Lcom/android/settings_ex/dndmode/h;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/dndmode/h;->b(Lcom/android/settings_ex/dndmode/h;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method
