.class Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# instance fields
.field final label:Ljava/lang/String;

.field final width:I

.field final x:I


# direct methods
.method constructor <init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V
    .locals 2

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    .line 350
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz p4, :cond_0

    const-string v0, "dM"

    :goto_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    .line 354
    return-void

    .line 350
    :cond_0
    const-string v0, "Md"

    goto :goto_0
.end method
