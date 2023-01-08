const labels = ['January', 'February', 'March', 'April', 'May', 'June'];
const data = {
    labels : labels,
    datasets : [
        {
            label: 'Number of order ',
            backgroundColor: 'blue',
            borderColor: 'blue',
            data: [10, 27, 45, 29, 34, 54],
            tension : 0.4
        },
          {
            label: 'Number of product ',
            backgroundColor: 'red',
            borderColor: 'red',
            data: [31, 40, 45, 49, 29, 56],
            tension : 0.4
        }
    ]
};
const config = {
    type : 'line',
    data : data
        
};
const canvas = document.getElementById('canvas');
const chart = new Chart(canvas, config);