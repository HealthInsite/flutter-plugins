part of health;

/// A [WorkoutSummary] object store vary metrics of a workout.
/// * totalDistance - The total distance that was traveled during a workout.
/// * totalEnergyBurned - The amount of energy that was burned during a workout.
/// * totalSteps - The count of steps was burned during a workout.
class WorkoutSummary {
  num _totalDistance;
  num _totalEnergyBurned;
  num _totalSteps;  

  WorkoutSummary(
      this._totalDistance,
      this._totalEnergyBurned,
      this._totalSteps);

  /// Converts a json object to the [WorkoutSummary]
  factory WorkoutSummary.fromJson(json) => WorkoutSummary(
      json['totalDistance'],
      json['totalEnergyBurned'],
      json['totalSteps'],
      );

  /// Converts the [WorkoutSummary] to a json object
  Map<String, dynamic> toJson() => {
        'totalDistance': totalDistance,
        'totalEnergyBurned': totalEnergyBurned,
        'totalSteps': totalSteps        
      };

  @override
  String toString() => '${this.runtimeType} - '
      'totalDistance: $totalDistance, '
      'totalEnergyBurned: $totalEnergyBurned, '
      'totalSteps: $totalSteps';

  /// The total distance value of the workout.
  num get totalDistance => _totalDistance;

  /// The total energy burned value of the workout.
  num get totalEnergyBurned => _totalEnergyBurned;

  /// The total steps value of the workout.
  num get totalSteps => _totalSteps;
}
